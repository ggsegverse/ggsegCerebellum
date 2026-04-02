# Create Cerebellar Atlases
#
# Creates cerebellar atlas objects from the DiedrichsenLab cerebellar
# atlas collection (https://github.com/DiedrichsenLab/cerebellar_atlases)
# using the SUIT flatmap projection pipeline.
#
# Source NIfTIs in MNI152NLin6Asym space from the DiedrichsenLab repo.
# Obtained via git-lfs on 2026-03-28.
#
# LUT files in data-raw/luts/ provide proper region names and colors
# from the DiedrichsenLab TSV/LUT files and FreeSurfer color tables.
#
# Run with: Rscript data-raw/make_atlas.R

devtools::load_all(here::here("..", "..", "ggseg.extra"))
library(ggseg.formats)

source_dir <- here::here("data-raw", "source")
lut_dir <- here::here("data-raw", "luts")

read_lut <- function(lut_file) {
  lut <- utils::read.delim(lut_file, stringsAsFactors = FALSE)
  data.frame(
    idx = lut$index,
    label = lut$name,
    R = col2rgb(lut$color)[1, ],
    G = col2rgb(lut$color)[2, ],
    B = col2rgb(lut$color)[3, ],
    stringsAsFactors = FALSE
  )
}

atlases <- list(
  list(
    name = "anatom",
    file = "atl-Anatom_space-MNI_dseg.nii",
    lut = "anatom.tsv"
  ),
  list(
    name = "buckner7",
    file = "atl-Buckner7_space-MNI_dseg.nii",
    lut = "buckner7.tsv"
  ),
  list(
    name = "buckner17",
    file = "atl-Buckner17_space-MNI_dseg.nii",
    lut = "buckner17.tsv"
  ),
  list(
    name = "ji10",
    file = "atl-Ji10_space-MNI_dseg.nii",
    lut = "ji10.tsv"
  ),
  list(
    name = "mdtb10",
    file = "atl-MDTB10_space-MNI_dseg.nii",
    lut = "mdtb10.tsv"
  ),
  list(
    name = "xue10",
    file = "atl-Xue10Sub1_space-MNI_dseg.nii",
    lut = "xue10.tsv"
  ),
  list(
    name = "nettekoven32",
    file = "atl-NettekovenSym32_space-MNI_dseg.nii",
    lut = "nettekoven32.tsv"
  ),
  list(
    name = "nettekoven68",
    file = "atl-NettekovenSym68_space-MNI_dseg.nii",
    lut = "nettekoven68.tsv"
  )
)

sysdata_env <- new.env(parent = emptyenv())

for (atl in atlases) {
  vol_path <- file.path(source_dir, atl$file)
  if (!file.exists(vol_path)) {
    cli::cli_warn("Skipping {atl$name}: {.path {vol_path}} not found")
    next
  }

  lut_path <- file.path(lut_dir, atl$lut)
  input_lut <- if (file.exists(lut_path)) read_lut(lut_path) else NULL

  result <- tryCatch(
    create_cerebellar_from_volume(
      volume = vol_path,
      input_lut = input_lut,
      atlas_name = atl$name,
      output_dir = file.path("data-raw", atl$name),
      skip_existing = FALSE,
      cleanup = FALSE,
      verbose = TRUE
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
