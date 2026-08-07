# NEWS for TxDb.Gmax.JGI.Gmv4 Package

## Version 0.99.0 (2026-08-07)

### Initial Release

- First release of the package.
- The TxDb resource is distributed through AnnotationHub rather than shipped
  inside the package; it is retrieved at runtime with `AnnotationHub()`.
- Added `inst/scripts/make-data.R` and `inst/scripts/make-metadata.R`
  documenting how the TxDb resource and its AnnotationHub metadata are built.

