
# About

Package to bring RDF and SPARQL functionality to R, using the Jena libraries.

    java/ -> Helper classes for the R rdf package.
    rdf/ -> R package for dealing with RDF, using Jena.
    rrdflibs/ -> Jena libraries

Information about this package can be found in this preprint:

    Willighagen E. (2014) Accessing biological data in R with semantic web
    technologies. PeerJ PrePrints 2:e185v3

See https://dx.doi.org/10.7287/peerj.preprints.185v3

(Please cite this paper if you use this package.)

# User mailing list

    https://groups.google.com/forum/#!forum/rrdf-user

# Copyright / License

## rrdflibs package

Copyright (C) 2011-2015  Egon Willighagen and contributors

Apache License 2.0 for for the rrdflibs package files.

Copyright for Jena is described in the LICENSE and java/NOTICE
files. Please also visit https://jena.apache.org/.

## rrdf package

Copyright (C) 2011-2015  Egon Willighagen and contributors

License AGPL v3 for the rrdf package.

## Authors / Contributors

Authors:

Egon Willighagen

Contributions from:

Carl Boettiger,
Ryan Kohl

(See: https://github.com/egonw/rrdf/graphs/contributors)

# Install from R

Previously, the packages were available from CRAN, but this is no longer the case.

Mind you, the below install_github() method will attempt to rebuild the vignette
and therefore at this moment require a LaTeX distribution with pdflatex and a few
packages installed. See also issue https://github.com/egonw/rrdf/issues/28 and
https://github.com/egonw/rrdf/issues/29.

If you have the devtools package installed, you can do:

    > install.packages("rJava") # if not present already
    > install.packages("devtools") # if not present already
    > library(devtools)
    > install_github("egonw/rrdf", subdir="rrdflibs")
    > install_github("egonw/rrdf", subdir="rrdf", build_vignettes = FALSE)

# Compile from source

    $ cd rrdf/java
    $ groovy build.groovy
    $ cd ../..
    $ R CMD build rrdflibs
    $ R CMD check --as-cran rrdflibs_1.4.0.tar.gz
    $ R CMD build rrdf
    $ tar xvf rrdf_2.0.4.tar.gz rrdf/inst/doc/tutorial.pdf
    $ R CMD check --as-cran rrdf_2.0.4.tar.gz
