# Gradual Substrate Transition
A Thermally Stable Gradual Substrate Transition for Enhanced Optical Transmission in Photonic Integrated Circuits

> **Repository status:** data‑complete / doc‑light.  
> Please open an issue if anything is missing or unclear.

---

## 1 What is in this repo?

| Folder / file | Purpose |
| -------------- | ------- |
| **`Dispersion/`** | Group‑velocity‑dispersion (GVD) sweeps, saved as `.mat` and `.png` (used for Fig. 4 of the paper). |
| **`E and H fields/`** | False‑colour exports of the electric‑ and magnetic‑field snapshots at 1.55 µm (Fig. 5). |
| **`Tolerance/`** | Width‑error sweeps (±5 %, ±10 %) in `.mat` + ready‑made plots (Fig. 6). |
| **`Transmission_plots/`** | Wavelength‑dependent transmission curves and the multi‑temperature dataset (Fig. 2 | Fig. 3). |
| **`InP_SiO2_forward.lms`** | Lumerical **MODE** project – InP → SiO₂ graded transition (1 µm long). |
| **`InP_SiO2_reversed.lms`** | MODE project – SiO₂ → InP direction (same geometry, reversed launch). |
| **`SiO2_InP_forward.lms`**, **`SiO2_InP_reversed.lms`** | Reference simulations for the abrupt interface. |
| **`LICENSE`** | MIT licence. |
| **`README.md`** | *You are here.* |

All numerical data that underpin the journal manuscript are stored in MATLAB‑compatible `.mat` containers; every figure can be regenerated straight from those files.

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
