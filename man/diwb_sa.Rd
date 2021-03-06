% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diwb_sa.R
\name{diwb_sa}
\alias{diwb_sa}
\title{Titration Curve for Diprotic Weak Base}
\usage{
diwb_sa(conc.base = 0.1, conc.acid = 0.1, pka1 = 5, pka2 = 9,
  pkw = 14, vol.base = 50, plot = TRUE, eqpt = FALSE, overlay = FALSE,
  ...)
}
\arguments{
\item{conc.base}{Molar concentration of the diprotic weak base 
analyte; defaults to 0.10 M.}

\item{conc.acid}{Molar concentration of the strong base titrant;
defaults to 0.10 M.}

\item{pka1}{The pKa1 value for the diprotic weak base analyte's 
conjugate weak acid; defaults to a pKa1 of 5, or a pKb2 of 9 for the
weak base analyte.}

\item{pka2}{The pKa2 value for the diprotic weak base analyte's
conjugate weak acid; defaults to a pKa2 of 9, or a pKb1 of 5.}

\item{pkw}{The pKw (or pKs) value for the solvent; defaults to water
as a solvent with a pKw of 14.}

\item{vol.base}{The initial volume, in mL, of the solution that 
contains the weak base analyte; defaults to 50.00 mL.}

\item{plot}{Logical; if TRUE, plots the titration curve.}

\item{eqpt}{Logical; if TRUE, draws a vertical line at the titration
curve's equivalence point.}

\item{overlay}{Logical; if TRUE, adds the current titration curve
to the existing titration curve.}

\item{\dots}{Additional arguments to pass to \code{plot()} function.}
}
\value{
A two-column data frame that contains the volume of titrant
in the first column and the solution's pH in the second column. Also
produces a plot of the titration curve with options to display the
equivalence point and to overlay titration curves.
}
\description{
This function calculates and plots the titration curve for a 
diprotic weak base analyte using a monoprotic strong acid as 
the titrant. The calculation uses a single master equation
that finds the volume of titrant needed to achieve a fixed pH, 
as outlined in R. de Levie's \emph{Principles of Quantitative 
Chemical Analysis} (McGraw-Hill, 1997).
}
\examples{
### Simple titration curve with equivalence points
ex6 = diwb_sa(eqpt = TRUE)
head(ex6)

### Overlay titration curves using different pKa1 and pKa2 values
diwb_sa(pka1 = 5, pka2 = 9, eqpt = TRUE)
diwb_sa(pka1 = 6, pka2 = 10, overlay = TRUE)
diwb_sa(pka1 = 4, pka2 = 8,  overlay = TRUE)
}
\author{
David T. Harvey, DePauw University. \email{harvey@depauw.edu}
}

