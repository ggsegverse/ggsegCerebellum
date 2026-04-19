#' Nettekoven Cerebellar Functional Atlases
#'
#' Hierarchical symmetric cerebellar parcellations from
#' Nettekoven et al. (2024). Available as 32-region and
#' 68-region variants. Regions are coded by functional domain:
#' Motor (M), Auditory (A), Default mode (D), Somatosensory (S),
#' with left (L) and right (R) hemispheric labels.
#'
#' @family ggseg_atlases
#' @family cerebellar_atlases
#'
#' @references Nettekoven C, et al. (2024). A hierarchical atlas
#'   of the human cerebellum for functional precision mapping.
#'   *Nature Communications*, 15:8376.
#'   \doi{10.1038/s41467-024-52371-w}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cerebellar).
#' @export
#' @examples
#' nettekoven32()
#' plot(nettekoven32())
nettekoven32 <- function() .nettekoven32

#' @rdname nettekoven32
#' @export
#' @examples
#' nettekoven68()
#' plot(nettekoven68())
nettekoven68 <- function() .nettekoven68
