# Example Colvars configuration for symmetric Distance-to-Bound-configuration (DBC) coordinate

This can be used as binding restraint to compute the binding affinity of a symmetric ligand.
(references coming soon)

# How to adapt the inputs to a different system

## Colvars for alchemical perturbation in the receptor

1. Start from `AFEP.colvars`;
2. Open the reference structure of the receptor-ligand complex in VMD;
3. Using the Colvars Dashobard, adapt the atom group definitions;
4. Adapt the `atomPermutation` lines to describe ligand symmetry;
5. Run an MD simulation of the bound state with the histogram blocks of `AFEP.colvars` enabled, but not the restraints;
6. Compute the upper threshold for the DBC coordinate from that simulation and set the `upperWall` restraint accordingly.

## Colvars for restraint free energy perturbation in gas phase

1. Start from `RFEP_vacuum.colvars`;
2. Open the structure of the ligand in gas phase in VMD;
3. Using the Colvars Dashboard, adapt the atom group definition for the ligand as dont for the full structure above;
4. Adjust the `atomPermutation` lines defined above to the atom numbers in the gas phase ligand structure;
5. Set the center of the COM restraint (`dummyAtom` in `RFEP_vacuum.colvars`) by computing the `ligand_COM` coordinate in the reference structure.
