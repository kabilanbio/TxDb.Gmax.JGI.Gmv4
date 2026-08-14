\name{TxDb.Gmax.JGI.Gmv4}
\docType{package}

\alias{TxDb.Gmax.JGI.Gmv4-package}
\alias{TxDb.Gmax.JGI.Gmv4}
\alias{TxDb.Gmax.JGI.Gmv4}
\alias{TTxDb.Gmax.JGI.Gmv4_dbconn}
\alias{TxDb.Gmax.JGI.Gmv4_dbfile}

\title{Annotation package for TxDb object(s)}

\description{
  TxDb.Gmax.JGI.Gmv4 provides transcript, exon, and CDS annotations
  for soybean (Glycine max Wm82.a4.v1). It is a Bioconductor TxDb
  object built from the official JGI/Phytozome GFF3 annotation and
  is available via AnnotationHub (retrievable with AnnotationHub());
  after loading you can use GenomicFeatures accessors (genes(),
  transcripts(), exonsBy(), cdsBy()) to extract gene models identified
  by JGI/Phytozome locus IDs.
}

\note{
  This data package was built from the JGI/Phytozome GFF3 annotation of
  soybean (Glycine max Wm82.a4.v1).
}

\author{
  Dwijesh Chandra Mishra (aut),
  Sharanbasappa D Madival (aut),
  Kabilan S (aut, cre) \email{kabilan151414@gmail.com}
}

\seealso{
  \link[GenomicFeatures]{transcripts},
  \link[GenomicFeatures]{transcriptsBy}
}

\examples{
## The TxDb object is downloaded from AnnotationHub, so this example is
## only run when AnnotationHub is installed and the resource is
## reachable.
if (requireNamespace("AnnotationHub", quietly=TRUE)) {
    txdb <- tryCatch({
        ah <- AnnotationHub::AnnotationHub()
        ah[["AH122288"]]
    }, error=function(e) NULL)

    if (!is.null(txdb)) {
        txdb
        ## retrieve all genes
        GenomicFeatures::genes(txdb)
    }
}
}

\keyword{package}
\keyword{data}
