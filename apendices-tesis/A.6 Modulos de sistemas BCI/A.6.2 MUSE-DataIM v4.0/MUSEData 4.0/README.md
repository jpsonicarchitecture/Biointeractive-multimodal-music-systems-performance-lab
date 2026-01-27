# A.6.2 MUSE-DataIM v4.0

EEG acquisition and interaction module using Muse and Muse Athena devices.

## Main Files

### Patches
- 0 MuseData v 4.0.pd - Main patch of the MUSE DATA base module --> Main
- bangtac.pd - Tactile event control
- museacc.pd - Acceleration processing
- musealpha.pd - Alpha band processing (EEG)
- musebeta.pd - Beta band processing (EEG)
- musedelta.pd - Delta band processing (EEG)
- musegamma.pd - Gamma band processing (EEG)
- musegyr.pd - Gyroscope data processing
- MuseIMmov.pd - Movement module initialization (IM MOV)
- musetheta.pd - Theta band processing (EEG)
- randsamples.pd - Random sample selection
- raweeg.pd - Raw EEG data acquisition and management
- setrango.pd - Range and threshold adjustment
- setrango1.pd - Alternative range adjustment
- wtable.pd - Wavetable synthesis
- wtable-help.pd - Wavetable help file

### Resources
- Samples - Audio files folder (external download)
- snd_MUSE - Muse module sound resources available for download via Drive
- brain.png - Brain reference image

### MUSEDataIMMOV MODULE Patches
- `MuseDataIMmov_Main.pd` - Main movement module patch
- `headRotation.pd` - Head rotation processing
- `motionThresholds.pd` - Movement threshold control
- `vectorMapping3D.pd` - 3D parameter mapping
- `IM_sendOSC.pd` - OSC transmission of motion data

### See reference manual A.4 for configuration and usage of the MUSEDataIM-MOV 4.0 
https://github.com/jpsonicarchitecture/Biointeractive-multimodal-music-systems-performance-lab/blob/main/apendices-tesis/A.4%20Manuales%20Sistemas%20BCI/A.4.2%20MUSE-DataIMmov%20v4.0/MuseDataIMMOVl-repositorio-EN.pdf

## Resources
- System reference images
- Audio files and samples (available via external link)

## Dependencies
- Pure Data / Purr Data version 2.19 or higher
- Libraries included in the standard Purr Data distribution
- Muse v3 or Muse Athena device
- Muse Monitor application, available on Android Store or Apple Store  
https://play.google.com/store/apps/details?id=com.sonicPenguins.museMonitor

## Basic Usage
1. Open `0 MuseData v 4.0.pd`
2. Connect the Muse device
3. Connect computer and smartphone to the same WLAN network
4. Configure OSC addresses and ports according to the manual
5. Run the main patch

## Adjustable Parameters
- EEG RAW signal sensitivity
- EEG PSD signal sensitivity
- Parameter mapping ranges
- OSC transmission configuration

## Version
v4.0 - December 2025

## Author
Juan Pablo Posada Alvarez  
- Contact: juanerrante@gmail.com  
- Laboratory: Biointeractive Multimodal Music Systems Performance Lab


