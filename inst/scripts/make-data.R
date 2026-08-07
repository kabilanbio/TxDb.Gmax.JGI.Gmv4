### =========================================================================
### make-data.R
### -------------------------------------------------------------------------
###
### Builds the TxDb SQLite database distributed with this package through
### AnnotationHub, from the official JGI/Phytozome GFF3 annotation of soybean
### (Glycine max Wm82.a4.v1, Phytozome genome ID 508).
###
### The resulting file, TxDb.Gmax.Wm82.a4.sqlite, is deposited on Zenodo
### (record 20702344) and referenced from inst/extdata/metadata.csv.
###
### Not run at build or check time; kept here for provenance and
### reproducibility, as required for AnnotationHub packages.
###

library(txdbmaker)
library(AnnotationDbi)

### Phytozome downloads require a (free) JGI account, so the annotation is
### retrieved manually from SOURCE_URL and saved next to this script as
### Gmax_880_Wm82.a4.v1.gene_exons.gff3.gz.
SOURCE_URL <- paste0("https://data.jgi.doe.gov/refine-download/phytozome",
                     "?organism=Gmax&expanded=508&phytozome_version=14")

gff_file <- "Gmax_880_Wm82.a4.v1.gene_exons.gff3.gz"

txdb <- txdbmaker::makeTxDbFromGFF(
    file = gff_file,
    format = "gff3",
    dataSource = SOURCE_URL,
    organism = "Glycine max",
    taxonomyId = 3847
)

AnnotationDbi::saveDb(txdb, file = "TxDb.Gmax.Wm82.a4.sqlite")
