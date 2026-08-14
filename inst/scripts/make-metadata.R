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
    Title           = "TxDb.Gmax.JGI.Gmv4",
    Description     = "Transcript Annotation Database for Soybean",
    BiocVersion     = "3.24",
    Genome          = "Wm82.a4",
    SourceType      = "GFF",
    SourceVersion   = "1",
    SourceUrl       = "https://data.jgi.doe.gov/refine-download/phytozome?organism=Gmax&expanded=508&phytozome_version=14",
    Species         = "Glycine max",
    TaxonomyId      = "3847",
    Coordinate_1_based = TRUE,
    DataProvider    = "JGI/Phytozome",
    Maintainer      = "Kabilan S <kabilan151414@gmail.com>",
    RDataClass      = "TxDb",
    DispatchClass   = "SQLiteFile",
    Location_Prefix = "https://zenodo.org/",
    RDataPath       = "record/21847817/files/TxDb.Gmax.JGI.Gmv4.sqlite",
    Tags            = "AnnotationData:TxDb:Glycine_max:SequenceAnnotation:AnnotationHub",
    stringsAsFactors = FALSE
)

write.csv(meta, file = "inst/extdata/metadata.csv", row.names = FALSE)

