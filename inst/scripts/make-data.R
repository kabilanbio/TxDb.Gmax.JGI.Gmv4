### =========================================================================
### make-data.R
### -------------------------------------------------------------------------
###
### Builds the TxDb SQLite database distributed with this package through
### AnnotationHub, from the official official JGI/Phytozome GFF3 annotation.
###
### The resulting file, TxDb.Gmax.JGI.Gmv4.sqlite, is deposited on
### Zenodo (record 21847817) and referenced from inst/extdata/metadata.csv.
###
### Not run at build or check time; kept here for provenance and
### reproducibility, as required for AnnotationHub packages.
###

### SOY_Wm82_a4 GFF – full TxDb (chromosomes + scaffolds)
# ----------------------------------------------------------------------
# 1. Define paths and parameters
# ----------------------------------------------------------------------
library(Biostrings)
library(GenomicFeatures)
library(txdbmaker)

# --- File paths (adjust as needed) ---
# Below files were downloaded from below link
# https://data.jgi.doe.gov/refine-download/phytozome?organism=Gmax&expanded=508&phytozome_version=14

gff_file   <- "Gmax_508_Wm82.a4.v1.gene.gff3.gz"
fasta_file <- "Gmax_508_v4.0.fa.gz"

output_sqlite <- "TxDb.Gmax.JGI.Gmv4.sqlite"

organism_name   <- "Glycine max"
taxonomy_id     <- 3847
genome_assembly <- "Wm82.a4"

# ----------------------------------------------------------------------
# 2. Build full chrominfo from the FASTA (all sequences)
# ----------------------------------------------------------------------
genome <- readDNAStringSet(fasta_file)
cat("Number of sequences in FASTA:", length(genome), "\n")

chrominfo <- data.frame(
  chrom       = names(genome),
  length      = width(genome),
  is_circular = rep(FALSE, length(genome))
)
cat("chrominfo rows:", nrow(chrominfo), "\n")

# ----------------------------------------------------------------------
# 3. Build the TxDb directly from the compressed GFF + full chrominfo
# ----------------------------------------------------------------------
cat("Building TxDb from the full GFF file ... (this may take a while)\n")
soy_txdb <- suppressWarnings(
  makeTxDbFromGFF(
    file       = gff_file,       # original .gz file – can be read directly
    format     = "gff3",
    dataSource = "Joint Genome Institute (Phytozome)",
    organism   = organism_name,
    taxonomyId = taxonomy_id,
    chrominfo  = chrominfo       # all chromosomes + scaffolds
  )
)

# ----------------------------------------------------------------------
# 4. Fix genome label
# ----------------------------------------------------------------------
genome(seqinfo(soy_txdb)) <- genome_assembly

# ----------------------------------------------------------------------
# 5. Save to SQLite
# ----------------------------------------------------------------------
saveDb(soy_txdb, output_sqlite)

# ----------------------------------------------------------------------
# 6. Quick validation
# ----------------------------------------------------------------------
cat("TxDb saved to:", output_sqlite, "\n")
cat("Number of transcripts:", length(transcripts(soy_txdb)), "\n")
cat("Number of exons:", length(exons(soy_txdb)), "\n")
cat("Number of genes:", length(genes(soy_txdb)), "\n")
cat("Seqinfo (first 30 sequences):\n")
