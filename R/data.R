#' Cerebellar Anatomical Atlas (Diedrichsen 2009)
#'
#' Probabilistic atlas of cerebellar lobules and deep cerebellar nuclei.
#'
#' @family ggseg_atlases
#' @references Diedrichsen J, Balsters JH, Flavell J, Cussans E, Ramnani N
#'   (2009). A probabilistic MR atlas of the human cerebellum.
#'   *NeuroImage*, 46(1):39-46. \doi{10.1016/j.neuroimage.2009.01.045}
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @import ggseg.formats
#' @export
#' @examples
#' cerebellum_anatom()
#' plot(cerebellum_anatom())
cerebellum_anatom <- function() .cerebellum_anatom

#' Cerebellar Buckner 7-Network Atlas
#'
#' Assignment of cerebellar voxels to the Yeo 7 resting-state networks.
#'
#' @family ggseg_atlases
#' @references Buckner RL, Krienen FM, Castellanos A, Diaz JC, Yeo BTT
#'   (2011). The organization of the human cerebellum estimated by
#'   intrinsic functional connectivity.
#'   *Journal of Neurophysiology*, 106(5):2322-2345.
#'   \doi{10.1152/jn.00339.2011}
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' cerebellum_buckner7()
#' plot(cerebellum_buckner7())
cerebellum_buckner7 <- function() .cerebellum_buckner7

#' Cerebellar Buckner 17-Network Atlas
#'
#' Assignment of cerebellar voxels to the Yeo 17 resting-state networks.
#'
#' @family ggseg_atlases
#' @references Buckner RL, Krienen FM, Castellanos A, Diaz JC, Yeo BTT
#'   (2011). The organization of the human cerebellum estimated by
#'   intrinsic functional connectivity.
#'   *Journal of Neurophysiology*, 106(5):2322-2345.
#'   \doi{10.1152/jn.00339.2011}
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' cerebellum_buckner17()
#' plot(cerebellum_buckner17())
cerebellum_buckner17 <- function() .cerebellum_buckner17

#' Cerebellar Ji 10-Network Atlas
#'
#' Subcortical resting-state parcellation into 10 networks.
#'
#' @family ggseg_atlases
#' @references Ji JL, Spronk M, Kulkarni K, Repovs G, Anticevic A, Cole MW
#'   (2019). Mapping the human brain's cortical-subcortical functional
#'   network organization. *NeuroImage*, 185:35-57.
#'   \doi{10.1016/j.neuroimage.2018.10.006}
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' cerebellum_ji10()
#' plot(cerebellum_ji10())
cerebellum_ji10 <- function() .cerebellum_ji10

#' Cerebellar MDTB 10-Region Atlas (King 2019)
#'
#' Multi-Domain Task Battery parcellation of the cerebellum into 10 regions.
#'
#' @family ggseg_atlases
#' @references King M, Hernandez-Castillo CR, Poldrack RA, Ivry RB,
#'   Diedrichsen J (2019). Functional boundaries in the human cerebellum
#'   revealed by a multi-domain task battery. *Nature Neuroscience*,
#'   22(8):1371-1378. \doi{10.1038/s41593-019-0436-x}
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' cerebellum_mdtb10()
#' plot(cerebellum_mdtb10())
cerebellum_mdtb10 <- function() .cerebellum_mdtb10

#' Cerebellar Xue 10-Network Atlas
#'
#' Individual resting-state parcellation of the cerebellum into 10
#' cortical network territories.
#'
#' @family ggseg_atlases
#' @references Xue A, Kong R, Yang Q, et al. (2021). Local-global
#'   parcellation of the human cerebellum from intrinsic functional
#'   connectivity. *Journal of Neuroscience*, 41(35):7563-7575.
#'   \doi{10.1523/JNEUROSCI.0738-20.2020}
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' cerebellum_xue10()
#' plot(cerebellum_xue10())
cerebellum_xue10 <- function() .cerebellum_xue10

#' Cerebellar Nettekoven 32-Region Atlas
#'
#' Hierarchical symmetric functional parcellation with 32 cerebellar regions.
#'
#' @family ggseg_atlases
#' @references Nettekoven C, Zhi D, Lau H, King M, Diedrichsen J (2024).
#'   A hierarchical atlas of the human cerebellum for functional precision
#'   mapping. *Nature Communications*, 15:8718.
#'   \doi{10.1038/s41467-024-52371-w}
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' cerebellum_nettekoven32()
#' plot(cerebellum_nettekoven32())
cerebellum_nettekoven32 <- function() .cerebellum_nettekoven32

#' Cerebellar Nettekoven 68-Region Atlas
#'
#' Hierarchical symmetric functional parcellation with 68 cerebellar regions.
#'
#' @family ggseg_atlases
#' @references Nettekoven C, Zhi D, Lau H, King M, Diedrichsen J (2024).
#'   A hierarchical atlas of the human cerebellum for functional precision
#'   mapping. *Nature Communications*, 15:8718.
#'   \doi{10.1038/s41467-024-52371-w}
#' @return A [ggseg.formats::ggseg_atlas] object (subcortical).
#' @export
#' @examples
#' cerebellum_nettekoven68()
#' plot(cerebellum_nettekoven68())
cerebellum_nettekoven68 <- function() .cerebellum_nettekoven68
