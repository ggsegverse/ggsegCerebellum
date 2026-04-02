# ggsegCerebellum (development version)

## Deep cerebellar nuclei

- `anatom` atlas now includes 34 regions: 28 cortical lobules + 6 deep
  cerebellar nuclei (Dentate, Interposed, Fastigial x L/R). Deep nuclei
  have 3D meshes and coronal projection sf geometries in a "nuclei" view.
- `buckner17` atlas now includes all 17 regions. 17Networks_14 (152 voxels,
  previously missing) is rescued to the nearest SUIT surface vertex.
- `nettekoven68` LUT cleaned: removed 4 phantom entries (A3Lb, S2Ld, A3Rb,
  S2Rd) that had 0 voxels in the source NIfTI. Atlas has 64 regions.
- All other atlases unchanged.
