# TxDb.Gmax.JGI.Gmv4

TxDb.Gmax.JGI.Gmv4 provides transcript, exon, and CDS annotations 
for soybean (Glycine max Wm82.a4.v1). It is a Bioconductor TxDb 
object built from the official JGI/Phytozome GFF3 annotation; 
after loading you can use GenomicFeatures accessors (genes(), 
transcripts(), exonsBy(), cdsBy()) to extract gene models identified 
by JGI/Phytozome locus IDs.

## Installation

```r
if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}
BiocManager::install(c("AnnotationHub", "GenomicFeatures"))
```
## Usage

The TxDb object is not shipped inside the package; it is hosted on
AnnotationHub and downloaded on first use.

```r
library(TxDb.Gmax.JGI.Gmv4)
library(AnnotationHub)
library(GenomicFeatures)

ah <- AnnotationHub()
txdb <- ah[["AH122288"]]

genes(txdb)
head(transcripts(txdb))
exonsBy(txdb, by = "tx")
```

See the vignette for a full walkthrough:

```r
vignette("vignette", package = "TxDb.Gmax.JGI.Gmv4")
```


