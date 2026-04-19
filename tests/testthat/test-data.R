atlas_names <- c(
  "buckner7", "buckner17", "ji10",
  "mdtb10", "xue10", "nettekoven32", "nettekoven68"
)

for (nm in atlas_names) {
  atlas <- do.call(nm, list())

  describe(paste(nm, "atlas"), {
    it("is a ggseg_atlas", {
      expect_s3_class(atlas, "ggseg_atlas")
      expect_s3_class(atlas, "cerebellar_atlas")
    })

    it("is valid", {
      expect_true(ggseg.formats::is_ggseg_atlas(atlas))
    })

    it("has proper region names", {
      expect_false(
        any(grepl("^region_\\d+$", atlas$core$region)),
        info = paste(nm, "should not have generic region_N names")
      )
    })

    it("has vertex data for 3D rendering", {
      expect_false(is.null(atlas$data$vertices))
      expect_true("label" %in% names(atlas$data$vertices))
      expect_true("vertices" %in% names(atlas$data$vertices))
    })

    it("renders with plot()", {
      expect_no_error(plot(atlas))
    })
  })
}

describe("nettekoven32 atlas", {
  it("has functional domain codes", {
    regions <- nettekoven32()$core$region
    expect_true(any(grepl("^M\\d", regions)))
    expect_true(any(grepl("^D\\d", regions)))
    expect_true(any(grepl("^S\\d", regions)))
  })
})
