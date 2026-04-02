#' MDTB 10-Region Cerebellar Atlas
#'
#' Multi-Domain Task Battery cerebellar parcellation with 10
#' task-based functional regions from King et al. (2019).
#'
#' @family ggseg_atlases
#' @family cerebellar_atlases
#'
#' @references King M, et al. (2019). Functional boundaries in
#'   the human cerebellum revealed by a multi-domain task
#'   battery. *Nature Neuroscience*, 22(8):1371-1378.
#'   \doi{10.1038/s41593-019-0436-x}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cerebellar).
#' @export
#' @examples
#' mdtb10()
#' plot(mdtb10())
mdtb10 <- function() .mdtb10
