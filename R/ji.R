#' Ji 10-Network Cerebellar Atlas
#'
#' Cerebellar parcellation into 10 subcortical functional
#' networks from Ji et al. (2019).
#'
#' @family ggseg_atlases
#' @family cerebellar_atlases
#'
#' @references Ji JL, et al. (2019). Mapping the human brain's
#'   cortical-subcortical functional network organization.
#'   *NeuroImage*, 185:35-57.
#'   \doi{10.1016/j.neuroimage.2018.10.006}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cerebellar).
#' @export
#' @examples
#' ji10()
#' plot(ji10())
ji10 <- function() .ji10
