# A.6.3 MUSE-DataIMmov v4.0

Head movement acquisition and interaction module based on inertial data from Muse devices.

This module operates **exclusively as a dependent extension of the MUSE DATA module**.  
It cannot function independently and requires the base MUSE DATA module to be loaded and running.

## Main Files

### Patches
- MuseDataIMmov_Main.pd - Main patch of the MUSE-DataIMmov module --> Main
- headRotation.pd - Head rotation processing
- motionThresholds.pd - Motion threshold control
- vectorMapping3D.pd - Three-dimensional parameter mapping
- IM_sendOSC.pd - OSC transmission of motion and orientation data

### Resources
- Reference images for head orientation and motion vectors
- Internal control abstractions linked to MUSE DATA

## Module Dependency

⚠️ **Important**  
The MUSE-DataIMmov v4.0 module **depends entirely on the MUSE DATA module**:

- MUSE DATA must be loaded and initialized before using MUSE-DataIMmov
- EEG  sensor streams are managed by MUSE DATA
- MUSE-DataIMmov only processes inertial and head movement, data from PPG sensor and fNIRS sensors

Standalone operation is **not supported**.

### See reference manual A.4.2 for configuration and usage of the MUSE-DataIMmov v 4.0 system
https://github.com/jpsonicarchitecture/Biointeractive-multimodal-music-systems-performance-lab/blob/main/apendices-tesis/A.4%20Manuales%20Sistemas%20BCI/A.4.2%20MUSE-DataIMmov%20v4.0/MuseDataIMMOVl-repositorio-EN.pdf

## Dependencies
- Pure Data / Purr Data version 2.19 or higher
- MUSE DATA v4.0 module (mandatory)
- Libraries included in the standard Purr Data distribution
- Muse v3 or Muse Athena device
- Muse Monitor application (Android / iOS)

## Basic Usage
1. Open and run `0 MuseData v 4.0.pd` (MUSE DATA module)
2. Verify correct EEG and sensor data reception
3. ACtivate PPG monitor s
4. Configure motion thresholds and mapping parameters
5. Use head movement data for interaction and control

## Adjustable Parameters
- Head rotation sensitivity
- Motion detection thresholds
- 3D vector mapping ranges
- OSC transmission parameters

## Version
v4.0 - December 2025

## Author
Juan Pablo Posada Alvarez  
- Contact: juanerrante@gmail.com  
- Laboratory: Biointeractive Multimodal Music Systems Performance Lab

