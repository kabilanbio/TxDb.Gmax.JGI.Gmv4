metadata_file <- system.file("extdata", "metadata.csv",
                             package="TxDb.Gmax.JGI.Gmv4")

test_that("the AnnotationHub metadata is shipped with the package", {
    expect_true(nzchar(metadata_file))
})

test_that("the AnnotationHub metadata has the required fields", {
    meta <- read.csv(metadata_file, stringsAsFactors=FALSE)

    required <- c("Title", "Description", "BiocVersion", "Genome",
                  "SourceType", "SourceVersion", "SourceUrl", "Species",
                  "TaxonomyId", "Coordinate_1_based", "DataProvider",
                  "Maintainer", "RDataClass", "DispatchClass",
                  "Location_Prefix", "RDataPath", "Tags")

    expect_true(all(required %in% colnames(meta)))
    expect_identical(nrow(meta), 1L)
})

test_that("the AnnotationHub metadata describes this resource", {
    meta <- read.csv(metadata_file, stringsAsFactors=FALSE)

    expect_identical(meta$Title, "TxDb.Gmax.JGI.Gmv4")
    expect_identical(meta$Species, "Glycine max")
    expect_identical(meta$TaxonomyId, 3847L)
    expect_identical(meta$RDataClass, "TxDb")
    expect_identical(meta$DispatchClass, "SQLiteFile")
})
