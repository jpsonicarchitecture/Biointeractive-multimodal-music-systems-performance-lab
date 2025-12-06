# A.6.1 Crosier-Control-Data v2.0

Sistema de control para el  DMI Crosier-Control con procesamiento multimodal de datos de sensores.

## Archivos principales

### Patches
- `1_CrosierMain.pd` - Patch principal de control
- `oscCrosierDMI.pd` - Gestión de comunicación OSC
- `acelinesmart.pd` - Procesamiento de acelerómetro
- `acelsmart.pd` - Análisis de aceleración
- `girosmart.pd` - Procesamiento de giroscopio
- `mluz.pd` / `mluzphone2.pd` - Control de parámetros lumínicos
- `moduloEX2.pd` / `moduloEX3.pd` - Módulos de expansión
- `rotvector.pd` - Cálculo de vectores de rotación
- `sendOSCvect.pd` - Envío de vectores vía OSC
- `smartouch.pd` / `smartouchSM2.pd` - Interfaces táctiles
- `bangtac.pd` - Control de eventos táctiles
- `vector3D.pd` - Control paramtros de cuandrantes en 3D
### Ver manual de referncia  A.2 para cada modulo de sendor y
[A.3 para el manuel de Crosier control](./apendices-tesis/A.3%20Manuales%20Modulo%20Crosier-Control/CrosierMAnual-repositorio-EN%20.pdf)

### Recursos
- `3da.jpg` - Diagrama o interfaz gráfica

## Dependencias
- Pure Data verison Purr Data 2.19 i superior
- Librerías: incluidas en Version Purr
- Dispositivos: DMI Crosier-Control
## Uso básico
1. Abrir `1_CrosierMain.pd`
2. Conectar a red WLAN en smartphones y computadora 
3. Configurar direcciones OSC y puertos en cada telefono con la aplicacion Sensor2OSC. osckHooK segun se requiera
4. Ejecutar patch principal

## Parámetros ajustables
- Sensibilidad de sensores
- Rangos OSC
- Umbrales de detección

## Versión
v2.0 - Diciembre 2025

## Autor
Juan Pablo Posada
- Contacto: [juanerrante@gmail.com]
- Laboratorio: Biointeractive Multimodal Music Systems Performance Lab
