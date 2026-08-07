# TxDb.Osativa.MSU.RGAP7

TxDb.Osativa.MSU.RGAP7 is a Bioconductor-compatible transcript annotation database generated from the official MSU Rice Genome Annotation Project Release 7 (RGAP7) GFF3 annotation. It provides gene, transcript, exon, CDS, and genomic feature annotations for Oryza sativa (Nipponbare, IRGSP-1.0/MSU7).

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
txdb <- ah[["AH122276"]]

genes(txdb)
head(transcripts(txdb))
exonsBy(txdb, by = "tx")
```

See the vignette for a full walkthrough:

```r
vignette("vignette", package = "TxDb.Osativa.MSU.RGAP7")
```
