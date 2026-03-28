# ggsegCerebellum

<!-- badges: start -->
[![R-CMD-check](https://github.com/ggsegverse/ggsegCerebellum/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ggsegverse/ggsegCerebellum/actions/workflows/R-CMD-check.yaml)
[![r-universe](https://ggsegverse.r-universe.dev/badges/ggsegCerebellum)](https://ggsegverse.r-universe.dev/ggsegCerebellum)
<!-- badges: end -->

Cerebellar Atlases for the ggsegverse Ecosystem.

## Installation

``` r
# From r-universe
install.packages("ggsegCerebellum", repos = "https://ggsegverse.r-universe.dev")

# From GitHub
# install.packages("remotes")
remotes::install_github("ggsegverse/ggsegCerebellum")
```

## Usage

``` r
library(ggsegCerebellum)
library(ggseg)

plot(cerebellum_anatom())
```

## Atlases

| Atlas | Function | Regions | Reference |
|-------|----------|---------|-----------|
| Anatomical lobules | `cerebellum_anatom()` | Lobules + nuclei | Diedrichsen et al. (2009) |
| Buckner 7-Network | `cerebellum_buckner7()` | 7 networks | Buckner et al. (2011) |
| Buckner 17-Network | `cerebellum_buckner17()` | 17 networks | Buckner et al. (2011) |
| Ji 10-Network | `cerebellum_ji10()` | 10 networks | Ji et al. (2019) |
| MDTB 10-Region | `cerebellum_mdtb10()` | 10 task regions | King et al. (2019) |
| Xue 10-Network | `cerebellum_xue10()` | 10 networks | Xue et al. (2021) |
| Nettekoven 32 | `cerebellum_nettekoven32()` | 32 regions | Nettekoven et al. (2024) |
| Nettekoven 68 | `cerebellum_nettekoven68()` | 68 regions | Nettekoven et al. (2024) |

## Data source

All NIfTI parcellations from [DiedrichsenLab/cerebellar_atlases](https://github.com/DiedrichsenLab/cerebellar_atlases) in MNI152NLin6Asym space.

- **Date obtained**: 2026-03-28
