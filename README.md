# Gradual Substrate Transition
A Thermally Stable Gradual Substrate Transition for Enhanced Optical Transmission in Photonic Integrated Circuits

> Please open an issue if anything is missing or unclear.

---

## 1 What is in this repo?

| Folder / file | Purpose | Figure(s) |
| -------------- | ------- | -- |
| **`Transmission Simulations`** | Lumerical **MODE** projects for all 4 cases of the graded transition and all 4 temperatures | Fig. 1 & Fig. 6
| **`Wavelength_Dependant_Transmission_plots/`** | Wavelength‑dependent transmission curves | Fig. 3
| **`Tolerance/`** | Performance data (.mat) for ±5%, ±10% fabrication error and their plot code (.m) | Fig. 4
| **`E and H fields/`** | False‑colour plot exports of the electric and magnetic field snapshots at 1.55 µm | Fig. 5
| **`Dispersion/`** | Dispersion simulation file (.fsp), script to retrive time domain plots from the simulations (.lsf) as well as the exported data for MATLAB (.m and .mat) | Fig. 7
| **`LICENSE`** | MIT licence. |

Figures concerning those folders that have MATLAB files can be regenerated straight from `.m` files without the need to run the simulations.

---

## 2 Quick start (reproduce one spectrum)

1. **Launch Lumerical MODE** (2024 R1 or newer).  
2. Open `InP_SiO2_forward.lms` and click **Run**.  
3. When the simulation finishes, right‑click the *power monitor* → *Visualise* → you should obtain ~0.9 dB insertion loss at 1550 nm, matching Fig. 2 (blue curve, *m*=1.55).

> **Tip:** the material models already include the measured thermo‑optic dispersion used in the paper; to sweep temperature simply adjust the global `Temp` property in the *Material* object and re‑run.

---

## 3 Regenerate the paper figures (MATLAB)

```matlab
cd Dispersion
run plot_dispersion.m   % reproduces Fig. 4

cd ../Transmission_plots
run plot_spectra.m      % reproduces Fig. 2 & 3

cd ../Tolerance
run plot_tolerance.m    % reproduces Fig. 6
