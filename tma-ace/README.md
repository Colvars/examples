This folder contains input files for a simulation of a tiny system (27 atoms)
composed by one tetramethylammonium molecule and one acetone molecule.

Files necessary to run the system with NAMD (force field, PSF/PDB, etc) are in
the `Common` folder.

Other folders contain inputs to run the most common biasing & sampling methods
implemented by Colvars:

- `smd`: Steered Molecular Dynamics, with integration of the work performed on
  the restraint center
- `us`: umbrella sampling (WHAM inputs are not included)
- `abf`: Adaptive Biasing Force (ABF), using the total-forces estimator
  (classic thermodynamic integration)
- `mtd`: metadynamics
