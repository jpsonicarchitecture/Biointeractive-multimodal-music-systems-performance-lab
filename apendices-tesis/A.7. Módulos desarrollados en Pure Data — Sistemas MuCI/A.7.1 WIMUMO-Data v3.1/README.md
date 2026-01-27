# A.7.1 WIMUMO-Data v3.1

Multimodal acquisition and interaction module using the WIMUMO system,
developed in Pure Data for motion-based and embodied interaction.

## Main Files

### Patches
- `0 WIMUMO-Data v3.1.pd` – Main patch of the WIMUMO-Data module --> Main
- `bangtac.pd` – Tactile event control
- `mmgsplit.pd` – MMG signal processing and routing
- `mmgsplit1.pd` – Alternative MMG signal split module
- `mmgsplit2.pd` – Extended MMG signal processing
- `__________.pd` – (reserved)
- `__________.pd` – (reserved)
- `__________.pd` – (reserved)
- `__________.pd` – (reserved)
- `__________.pd` – (reserved)

## Resources
- Interface reference images
- Audio files and auxiliary resources (external download if required)

## Configuration and System Reference
The configuration, hardware description, and system architecture of WIMUMO
are documented in the official WIMUMO project repository:

https://github.com/wimumo/wimumo.github.io

## See reference manual for configuration and usage of WIMUMO-Data v3.1
[Manual link to be added]

## Dependencies
- Pure Data / Purr Data version 2.19 or higher
- Libraries included in the standard Purr Data distribution
- WIMUMO hardware system
- OSC-enabled network configuration

## Basic Usage
1. Open `0 WIMUMO-Data v3.1.pd`
2. Connect the WIMUMO hardware system
3. Connect the computer and interface devices to the same WLAN network
4. Configure OSC addresses and ports according to the system documentation
5. Run the main patch

## Adjustable Parameters
- Sensor sensitivity thresholds
- MMG signal scaling and routing
- Parameter mapping ranges
- OSC transmission configuration

## Version
v3.1 – 2025

## Author
Juan Pablo Posada Alvarez  

Contact: juanerrante@gmail.com  
Laboratory: Biointeractive Multimodal Music Systems Performance Lab

