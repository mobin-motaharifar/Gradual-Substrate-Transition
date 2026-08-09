# Gradual Substrate Transition

This repository contains the simulation files, exported data, and MATLAB post-processing scripts associated with the manuscript:

**“Thermally Stable Gradual Substrate Transition for Enhanced Optical Transmission in Photonic Integrated Circuits”**

---

## 1. What is in this repo?

| Folder / file | Purpose | Related figure(s) |
| -------------- | ------- | ----------------- |
| **`Transmission Simulations/`** | Lumerical MODE / varFDTD projects for the four substrate-transition cases, including graded and abrupt configurations and temperature-dependent simulations. | Fig. 2, Fig. 6 |
| **`Wavelength_Dependant_Transmission_plots/`** | MATLAB files and exported data for wavelength-dependent transmission spectra of selected transition profiles. | Fig. 3 |
| **`L_Sweep/`** | Lumerical MODE / varFDTD project for sweeping the transition length `L` from 0.5 µm to 5 µm, together with the exported MATLAB data file `L_sweep.mat` containing the transmission and reflection results. | Fig. 4 |
| **`E and H fields/`** | Exported electric- and magnetic-field intensity maps at 1.55 µm for the optimized transition. | Fig. 5 |
| **`Thermal_Stress/`** | COMSOL thermomechanical simulation file `Thermal_Stress.mph`, exported stress/displacement data, and MATLAB plotting code for the thermomechanical results. | Fig. 7 |
| **`Dispersion/`** | Time-domain / signal-quality simulation files, including Lumerical project files, scripts to retrieve pulse data, and MATLAB files for plotting pulse width and arrival time. | Fig. 8 |
| **`Tolerance/`** | Performance data and MATLAB scripts for ±5% and ±10% dimensional perturbations of the representative transition width. | Fig. 9 |
| **`LICENSE`** | MIT license. | — |

---

## 2. Manuscript figure map

| Figure | Description |
| ------ | ----------- |
| **Fig. 1** | Schematic representation of abrupt and gradual substrate transitions. |
| **Fig. 2** | Transmission-efficiency maps as a function of wavelength and transition parameter `m`. |
| **Fig. 3** | Wavelength-dependent transmission comparison between abrupt and graded transitions. |
| **Fig. 4** | Transmission and reflected power as functions of transition length `L` from 0.5 µm to 5 µm at 1.55 µm. |
| **Fig. 5** | Electric- and magnetic-field confinement at 1.55 µm. |
| **Fig. 6** | Temperature-dependent optical transmission comparison from 10 K to 500 K. |
| **Fig. 7** | COMSOL thermomechanical analysis: first principal stress, interface-averaged stress, displacement, and maximum-deformation visualization. |
| **Fig. 8** | Time-domain signal-quality comparison between abrupt and graded transitions. |
| **Fig. 9** | Fabrication-tolerance analysis for ±5% and ±10% dimensional perturbations. |

---

## 3. Redoing the Lumerical simulations

1. Open the desired `.lms` or `.fsp` file in Lumerical MODE / FDTD.
2. Select the desired temperature, transition direction, and transition parameter `m` by editing the corresponding solver, material, or taper properties.
3. Run the simulation.
4. After the simulation finishes, open the relevant monitor result. For wavelength-domain simulations, right-click the transmission monitor and select:

   **Visualize → Transmission**

5. If an `.lsf` script is provided in the folder, run the script after the simulation finishes to export the required data for MATLAB post-processing.
6. Some projects include predefined parameter sweeps under the **Optimizations and Sweeps** tab. In several cases, sweep results are already available and can be inspected without rerunning the full simulation.

### Reproducing the transition-length sweep in Fig. 4

The transmission- and reflection-versus-length results shown in Fig. 4 can be reproduced using the Lumerical project:

`L_Sweep/InP_SiO2_forward_L_Sweep.lms`

After opening the project in Lumerical MODE, run the predefined parameter sweep:

**`sweep_taper_length`**

The sweep varies the transition length `L` from **0.5 µm to 5 µm** for the optimized InP-to-SiO₂ configuration and records both the transmitted and reflected power as functions of `L`.

The exported numerical results used to generate the manuscript figure are also provided in:

`L_Sweep/L_sweep.mat`

This allows Fig. 4 to be regenerated in MATLAB without rerunning the full Lumerical parameter sweep.

> **Tip:** The material models used for the temperature-dependent optical simulations already include the thermo-optic dispersion assumptions used in the manuscript. To change temperature, adjust the global or material-specific temperature parameter consistently with the simulation setup.
---



## 4. Redoing the COMSOL thermomechanical simulation

The COMSOL thermomechanical model used for Fig. 7 is located at:

`Thermal_Stress/Thermal_Stress.mph`

Due to file-size limitations for uploading the repository, the COMSOL file may not include all solved datasets. Therefore, users should rerun both the static study and the temperature sweep inside COMSOL to regenerate the full stress and displacement results.

The model evaluates the optimized InP-to-SiO₂ gradual substrate transition with:

- `m = 1.55`
- `T_ref = 300 K`
- `T_final = 10 K to 500 K`

The COMSOL model is the primary simulation file for the thermomechanical analysis. By running the static study and the temperature sweep, users can regenerate the stress and displacement fields, inspect the probe locations, evaluate the InP/SiO₂ interface average, and reproduce the maximum-deformation visualization shown in Fig. 7(d).

Suggested COMSOL workflow:

1. Open `Thermal_Stress/Thermal_Stress.mph`.
2. Check that the material parameters, thermal expansion settings, and mechanical boundary conditions are loaded correctly.
3. Run the static study.
4. Run the temperature sweep from 10 K to 500 K.
5. Use the COMSOL results to inspect the stress distribution, displacement field, and maximum-deformation corner.
6. Export the stress and displacement data if additional post-processing is needed.

> **Note:** The thermomechanical results are intended as numerical trends under the modeled boundary conditions, not as a complete experimental reliability qualification.
---



## 5. Regenerating the paper figures using MATLAB

Figures associated with folders containing `.m` files can be regenerated directly from the MATLAB scripts and exported simulation data.

General procedure:

1. Open MATLAB.
2. Navigate to the folder corresponding to the desired figure.
3. Run the provided `.m` script.
4. The script will load the associated `.mat`, `.xlsx`, or exported data files and regenerate the corresponding plot.

| Folder | Main output |
| ------ | ----------- |
| **`Wavelength_Dependant_Transmission_plots/`** | Fig. 3 wavelength-dependent transmission spectra |
| **`L_Sweep/`** | Fig. 4 transmission and reflection versus transition length |
| **`Thermal_Stress/`** | Fig. 7(b) and Fig. 7(c) stress and displacement plots |
| **`Dispersion/`** | Fig. 8 time-domain pulse comparison |
| **`Tolerance/`** | Fig. 9 fabrication-tolerance curves |

### Fig. 4 — Transition-length sweep

The file:

`L_Sweep/L_sweep.mat`

contains the exported numerical data used to generate Fig. 4. It contains the transition-length sweep results for `L = 0.5 µm` to `5 µm`, including the corresponding transmitted and reflected powers.

The MATLAB plotting script in the `L_Sweep/` folder loads `L_sweep.mat` and reproduces the transmission- and reflection-versus-length curves shown in Fig. 4. The selected nominal design value of `L = 1 µm` is also indicated in the manuscript figure.

The same data can be regenerated directly from Lumerical by opening:

`L_Sweep/InP_SiO2_forward_L_Sweep.lms`

and running the predefined:

**`sweep_taper_length`**

parameter sweep.

### Fig. 7 — Thermomechanical plots

The MATLAB files in `Thermal_Stress/` regenerate the first-principal-stress and displacement curves shown in Fig. 7(b) and Fig. 7(c) from the exported COMSOL data.

Fig. 7(d), the maximum-deformation visualization, should be regenerated directly from the COMSOL model after rerunning the static and temperature-sweep studies.

### Fig. 8 — Time-domain signal-quality comparison

The MATLAB files in `Dispersion/` use the exported time-domain simulation data to reproduce the pulse comparison in Fig. 8, including the pulse arrival time, pulse width, and normalized output amplitude.

### Fig. 9 — Fabrication-tolerance analysis

The MATLAB files in `Tolerance/` use the exported tolerance-study data to reproduce the transmission curves corresponding to the nominal design and the ±5% and ±10% dimensional perturbations shown in Fig. 9.
---

## 6. License

This project is released under the MIT License. See the `LICENSE` file for details.
