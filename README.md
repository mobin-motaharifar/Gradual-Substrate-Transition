# Gradual Substrate Transition
A Thermally Stable Gradual Substrate Transition for Enhanced Optical Transmission in Photonic Integrated Circuits




## 1 What is in this repo?

| Folder / file | Purpose | Figure(s) |
| -------------- | ------- | -- |
| **`Transmission Simulations`** | Lumerical **MODE** projects for all 4 cases of the graded transition and all 4 temperatures | Fig. 1 & Fig. 6
| **`Wavelength_Dependant_Transmission_plots/`** | Wavelength‑dependent transmission curves | Fig. 3
| **`Tolerance/`** | Performance data (`.mat`) for ±5%, ±10% fabrication error and their plot code (`.m`) | Fig. 4
| **`E and H fields/`** | False‑colour plot exports of the electric and magnetic field snapshots at 1.55 µm | Fig. 5
| **`Dispersion/`** | Dispersion simulation file (`.fsp`), script to retrive time domain plots from the simulations (`.lsf`) as well as the exported data for MATLAB (`.m` and `.mat`) | Fig. 7
| **`LICENSE`** | MIT licence. |






## 2 Redoing the simulations

1. Open `.lms`/`.fsp` file, choose desired temperature and m values respectively by editing them in *FDTD*/*VarFDTD* solver and *taper* properties. click **Run**.  
2. When the simulation finishes, right‑click the *monitor_5* → *Visualise* → *Transmission*. You should see the transmission plot over wavelength range for the particular temperature and m value. If there is an `.lsf` script file, run it after the simulation is finished.
3. You can also find a wide range of sweeps in *Optimizations and Sweeps* tab on the right hand side, with some results already available without a need to run them.
   
> **Tip:** the material models already include the measured thermo‑optic dispersion used in the paper; to sweep temperature simply adjusting the global `Temp` property would suffice.





## 3 Regenerate the paper figures using MATLAB

Figures concerning those folders that have MATLAB files can be regenerated straight from `.m` files without the need to run the simulations.
