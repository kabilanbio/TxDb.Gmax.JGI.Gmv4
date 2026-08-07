\name{TxDb.Gmax.JGI.Gmv4}
\docType{package}

\alias{TxDb.Gmax.JGI.Gmv4-package}
\alias{TxDb.Gmax.JGI.Gmv4}
\alias{TxDb.Gmax.JGI.Gmv4}
\alias{TTxDb.Gmax.JGI.Gmv4_dbconn}
\alias{TxDb.Gmax.JGI.Gmv4_dbfile}

\title{Annotation package for TxDb object(s)}

\description{
  This package loads a TxDb object for \emph{Glycine max} based on the
  Rice Genome Annotation Project (RGAP) Release 7 annotation (MSU7).
  The TxDb object provides transcript, exon, CDS and gene ranges
  for the IRGSP-1.0 / MSU7 genome assembly.
}

\note{
  This data package was built from the RGAP Release 7 GFF3 annotation
  (MSU7, IRGSP-1.0).
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
## load the library
## list the contents that are loaded into memory
ls('package:TxDb.Gmax.JGI.Gmv4')

## show the db object that is loaded by calling its name
TxDb.Gmax.JGI.Gmv4

## retrieve all genes
genes(TxDb.Gmax.JGI.Gmv4)
}

\keyword{package}
\keyword{data}
