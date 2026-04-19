#' Xue 10-Network Cerebellar Atlas
#'
#' Individual resting-state cerebellar parcellation with 10
#' networks from Xue et al. (2021).
#'
#' @family ggseg_atlases
#' @family cerebellar_atlases
#'
#' @references Xue A, et al. (2021). Local-global parcellation
#'   of the human cerebellum from intrinsic functional
#'   connectivity. *Cerebral Cortex*, 31(2):764-778.
#'   \doi{10.1093/cercor/bhaa253}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cerebellar).
#' @export
#' @examples
#' xue10()
#' plot(xue10())
xue10 <- function() .xue10
