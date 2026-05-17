# Gradual Substrate Transition

A thermally stable gradual substrate-transition design for enhanced optical transmission in heterogeneous photonic integrated circuits.

This repository contains the simulation files, exported data, and MATLAB post-processing scripts associated with the revised manuscript:

**“Thermally Stable Gradual Substrate Transition for Enhanced Optical Transmission in Photonic Integrated Circuits”**

---

## 1. What is in this repo?

| Folder / file | Purpose | Related figure(s) in revised manuscript |
| -------------- | ------- | -------------------------------------- |
| **`Transmission Simulations/`** | Lumerical MODE / varFDTD projects for the four substrate-transition cases, including graded and abrupt configurations and temperature-dependent simulations. | Fig. 2, Fig. 5 |
| **`Wavelength_Dependant_Transmission_plots/`** | MATLAB files and exported data for wavelength-dependent transmission spectra of selected transition profiles. | Fig. 3 |
| **`E and H fields/`** | Exported electric- and magnetic-field intensity maps at 1.55 µm for the optimized transition. | Fig. 4 |
| **`Thermal_Stress/`** | COMSOL thermomechanical simulation file, including `Thermal_Stress.mph`, used to evaluate first principal stress, interface-averaged stress, and displacement under temperature variation. | Fig. 6 |
| **`Dispersion/`** | Time-domain / signal-quality simulation files, including Lumerical project files, scripts to retrieve pulse data, and MATLAB files for plotting pulse width and arrival time. | Fig. 7 |
| **`Tolerance/`** | Performance data and MATLAB scripts for ±5% and ±10% dimensional perturbations of the representative transition width. | Fig. 8 |
| **`LICENSE`** | MIT license. | — |

---

## 2. Revised manuscript figure map

| Figure | Description |
| ------ | ----------- |
| **Fig. 1** | Schematic representation of abrupt and gradual substrate transitions. |
| **Fig. 2** | Transmission-efficiency maps as a function of wavelength and transition parameter `m`. |
| **Fig. 3** | Wavelength-dependent transmission comparison between abrupt and graded transitions. |
| **Fig. 4** | Electric- and magnetic-field confinement at 1.55 µm. |
| **Fig. 5** | Temperature-dependent optical transmission comparison from 10 K to 500 K. |
| **Fig. 6** | COMSOL thermomechanical analysis: first principal stress, interface-averaged stress, displacement, and maximum-deformation visualization. |
| **Fig. 7** | Time-domain signal-quality comparison between abrupt and graded transitions. |
| **Fig. 8** | Fabrication-tolerance analysis for ±5% and ±10% dimensional perturbations. |

---

## 3. Redoing the Lumerical simulations

1. Open the desired `.lms` or `.fsp` file in Lumerical MODE / FDTD.
2. Select the desired temperature, transition direction, and transition parameter `m` by editing the corresponding solver, material, or taper properties.
3. Run the simulation.
4. After the simulation finishes, open the relevant monitor result. For wavelength-domain simulations, right-click the transmission monitor and select:

   **Visualize → Transmission**

5. If an `.lsf` script is provided in the folder, run the script after the simulation finishes to export the required data for MATLAB post-processing.
6. Some projects include predefined parameter sweeps under the **Optimizations and Sweeps** tab. In several cases, sweep results are already available and can be inspected without rerunning the full simulation.

> **Tip:** The material models used for the temperature-dependent optical simulations already include the thermo-optic dispersion assumptions used in the manuscript. To change temperature, adjust the global or material-specific temperature parameter consistently with the simulation setup.

---

## 4. Redoing the COMSOL thermomechanical simulation

The revised manuscript includes a new thermomechanical analysis shown in **Fig. 6**.

To inspect or rerun this simulation:

1. Open:

   ```text
   Thermal_Stress/Thermal_Stress.mph
