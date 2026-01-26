# A.6.2 MUSE-DataIM v4.0

Sistema de adquisición y control de datos neurofisiológicos y de movimiento
del dispositivo Muse para sistemas BCI y MMHCI.

## Archivos principales

### Patches
- `0 MuseData v 4.0.pd` - Patch principal de adquisición y control de señales Muse
- `oscMuseIn.pd` - Gestión de comunicación OSC con Muse Monitor
- `EEG_processing.pd` - Procesamiento de señales EEG
- `PPG_processing.pd` - Procesamiento de señal PPG
- `fNIRS_processing.pd` - Procesamiento de datos fNIRS
- `mapping_PMson.pd` - Mapeo de parámetros para sonificación
- `sendOSC_out.pd` - Envío de datos procesados vía OSC

### Patches MUSE DATA IM MOV
- `MuseDataIMmov_Main.pd` - Patch principal del módulo de movimiento
- `headRotation.pd` - Procesamiento de rotación de cabeza
- `motionThresholds.pd` - Control de umbrales de movimiento
- `vectorMapping3D.pd` - Mapeo tridimensional de parámetros
- `IM_sendOSC.pd` - Envío OSC de datos de movimiento

### Ver manual de referencia A.4 para configuración y uso del sistema Muse Data  
https://github.com/jpsonicarchitecture/Biointeractive-multimodal-music-systems-performance-lab/blob/main/apendices-tesis/A.4%20Manuales%20Sistemas%20BCI/MuseDataMAnual-repositorio-EN.pdf

## Recursos
- Imágenes de referencia del sistema
- Archivos de audio y samples (disponibles mediante enlace externo)

## Dependencias
- Pure Data / Purr Data versión 2.19 o superior
- Librerías incluidas en la versión estándar de Purr Data
- Dispositivo Muse
- Aplicación Android Muse Monitor  
https://play.google.com/store/apps/details?id=com.sonicPenguins.museMonitor

## Uso básico
1. Abrir `0 MuseData v 4.0.pd`
2. Conectar el dispositivo Muse
3. Conectar computadora y smartphone a la misma red WLAN
4. Configurar direcciones OSC y puertos según el manual
5. Ejecutar el patch principal
6. Para control por movimiento, cargar el módulo MUSE DATA IM MOV

## Parámetros ajustables
- Sensibilidad de señales EEG, PPG y fNIRS
- Rangos de mapeo de parámetros
- Umbrales de detección de movimiento
- Configuración de envío OSC

## Versión
v4.0 - Enero 2026

## Autor
Juan Pablo Posada  
- Contacto: juanerrante@gmail.com  
- Laboratorio: Biointeractive Multimodal Music Systems Performance Lab

