# TxDb.Gmax.JGI.Gmv4

TxDb.Gmax.JGI.Gmv4 is a Bioconductor-compatible transcript annotation database generated from the official JGI/Phytozome GFF3 annotation of soybean (Glycine max, accession Wm82.a4.v1). It provides gene, transcript, exon, CDS, and promoter annotations for the 20 nuclear chromosomes of the Wm82.a4.v1 assembly.

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
library(AnnotationHub)
library(GenomicFeatures)

ah <- AnnotationHub()
query(ah, "TxDb.Gmax.JGI.Gmv4")   # look up the AH accession
txdb <- ah[["AHxxxxxx"]]          # replace with the accession printed above

genes(txdb)
head(transcripts(txdb))
exonsBy(txdb, by = "tx")
```

See the vignette for a full walkthrough:

```r
vignette("vignette", package = "TxDb.Gmax.JGI.Gmv4")
```
