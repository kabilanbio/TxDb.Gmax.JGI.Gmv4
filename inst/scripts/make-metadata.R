### =========================================================================
### make-metadata.R
### -------------------------------------------------------------------------
###
### Generates inst/extdata/metadata.csv, the AnnotationHub resource
### description for the TxDb built by inst/scripts/make-data.R.
###
### Validate the result with:
###     AnnotationHubData::makeAnnotationHubMetadata("<path to package>")
###

meta <- data.frame(
    Title = "TxDb.Gmax.JGI.Gmv4",
    Description = "Transcript Annotation Database for Soybean",
    BiocVersion = "3.24",
    Genome = "Wm82.a4.v1",
    SourceType = "GFF",
    SourceVersion = "Wm82.a4.v1",
    SourceUrl = paste0("https://data.jgi.doe.gov/refine-download/phytozome",
                       "?organism=Gmax&expanded=508&phytozome_version=14"),
    Species = "Glycine max",
    TaxonomyId = 3847L,
    Coordinate_1_based = TRUE,
    DataProvider = "JGI/Phytozome",
    Maintainer = "Kabilan S <kabilan151414@gmail.com>",
    RDataClass = "TxDb",
    DispatchClass = "SQLiteFile",
    Location_Prefix = "https://zenodo.org/",
    RDataPath = "records/20702344/files/TxDb.Gmax.Wm82.a4.sqlite",
    ## Tags are colon separated, see ?AnnotationHubData::makeAnnotationHubMetadata
    Tags = paste("AnnotationData", "TxDb", "Glycine max",
                 "SequenceAnnotation", "AnnotationHub", sep = ":"),
    stringsAsFactors = FALSE
)

write.csv(meta, file = "inst/extdata/metadata.csv", row.names = FALSE)
