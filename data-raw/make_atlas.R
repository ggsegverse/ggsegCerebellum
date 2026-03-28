# Create Cerebellar Atlases
#
# Creates subcortical atlas objects from the DiedrichsenLab cerebellar
# atlas collection (https://github.com/DiedrichsenLab/cerebellar_atlases).
#
# Source NIfTIs in MNI152NLin6Asym space from the DiedrichsenLab repo.
# Obtained via git-lfs on 2026-03-28.
#
# Run with: Rscript data-raw/make_atlas.R

library(ggseg.extra)
library(ggseg.formats)

source_dir <- here::here("data-raw", "source")

atlases <- list(
  list(name = "cerebellum_anatom",
       file = "atl-Anatom_space-MNI_dseg.nii"),
  list(name = "cerebellum_buckner7",
       file = "atl-Buckner7_space-MNI_dseg.nii"),
  list(name = "cerebellum_buckner17",
       file = "atl-Buckner17_space-MNI_dseg.nii"),
  list(name = "cerebellum_ji10",
       file = "atl-Ji10_space-MNI_dseg.nii"),
  list(name = "cerebellum_mdtb10",
       file = "atl-MDTB10_space-MNI_dseg.nii"),
  list(name = "cerebellum_xue10",
       file = "atl-Xue10Sub1_space-MNI_dseg.nii"),
  list(name = "cerebellum_nettekoven32",
       file = "atl-NettekovenSym32_space-MNI_dseg.nii"),
  list(name = "cerebellum_nettekoven68",
       file = "atl-NettekovenSym68_space-MNI_dseg.nii")
)

sysdata_env <- new.env(parent = emptyenv())

for (atl in atlases) {
  vol_path <- file.path(source_dir, atl$file)
  if (!file.exists(vol_path)) {
    cli::cli_warn("Skipping {atl$name}: {.path {vol_path}} not found")
    next
  }

  result <- tryCatch(
    create_subcortical_from_volume(
      input_volume = vol_path,
      atlas_name = atl$name,
      output_dir = file.path("data-raw", atl$name),
      skip_existing = TRUE,
      cleanup = FALSE
    ),
    error = function(e) {
      cli::cli_warn("Failed {atl$name}: {conditionMessage(e)}")
      NULL
    }
  )

  if (is.null(result)) next

  print(result)
  plot(result)

  sysdata_env[[paste0(".", atl$name)]] <- result
}

save(
  list = ls(sysdata_env, all.names = TRUE),
  envir = sysdata_env,
  file = here::here("R", "sysdata.rda"),
  compress = "xz"
)
