import socket
import asyncio
from pythonosc.dispatcher import Dispatcher
from pythonosc.osc_server import AsyncIOOSCUDPServer

# ==========================================
# CONFIGURACIÓN
# ==========================================

MIND_PORT = 5000
PD_HOST = "127.0.0.1"
PD_PORT = 9000

# Socket UDP
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Buffer pequeño
sock.setsockopt(socket.SOL_SOCKET, socket.SO_SNDBUF, 1024)

# Baja latencia
sock.setsockopt(socket.IPPROTO_IP, socket.IP_TOS, 0x10)

# ==========================================
# TABLA DE DIRECCIONES
# ==========================================

ROUTES = {

#    "/muse/elements/alpha_absolute": "alpha",
#    "/muse/elements/beta_absolute": "beta",
#    "/muse/elements/delta_absolute": "delta",
#    "/muse/elements/theta_absolute": "theta",
#    "/muse/elements/gamma_absolute": "gamma",

#    "/muse/eeg": "raw",

    "/muse/acc": "acc",
    "/muse/gyro": "gyro",

#    "/muse/elements/horseshoe": "horseshoe",
#    "/muse/elements/blink": "blink",
#    "/muse/elements/jaw_clench": "jaw",
#    "/muse/elements/touching_forehead": "touch",
#    "/muse/batt": "battery",
#    "/muse/ppg": "ppg",
#    "/muse/optics": "optics",
#    "/muse/elements/experimental/concentration": "concentration",
#    "/muse/elements/experimental/mellow": "meditation"
}

# ==========================================
# ENVÍO
# ==========================================

def send(label, values):

    msg = f"{label} {' '.join(f'{v:.4f}' for v in values)};\n"

    sock.sendto(msg.encode("utf-8"), (PD_HOST, PD_PORT))

# ==========================================
# RECEPCIÓN OSC
# ==========================================

def handler(address, *args):

    label = ROUTES.get(address)

    if label:
        send(label, args)

# ==========================================
# MAIN
# ==========================================

async def main():

    dispatcher = Dispatcher()

    dispatcher.set_default_handler(handler)

    server = AsyncIOOSCUDPServer(
        ("0.0.0.0", MIND_PORT),
        dispatcher,
        asyncio.get_event_loop()
    )

    transport, protocol = await server.create_serve_endpoint()

    print("====================================")
    print("Muse Bridge iniciado")
    print("Mind Monitor -> Puerto", MIND_PORT)
    print("PlugData -> UDP", PD_PORT)
    print("====================================")

    try:
        await asyncio.Event().wait()
    finally:
        transport.close()

asyncio.run(main())