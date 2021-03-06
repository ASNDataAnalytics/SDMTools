\name{ConnCompLabel}
\alias{ConnCompLabel}
\title{Connected Components Labelling -- Unique Patch Labelling}
\usage{
ConnCompLabel(mat)
}
\arguments{
  \item{mat}{is a binary matrix of data with 0 representing
  background and 1 representing environment of interest. NA
  values are acceptable. The matrix can be a raster of
  class 'asc' (this & adehabitat package), 'RasterLayer'
  (raster package) or 'SpatialGridDataFrame' (sp package)}
}
\value{
A matrix of the same dim and class of \code{mat} in which
unique components (individual patches) are numbered 1:n
with 0 remaining background value.
}
\description{
\code{ConnCompLabel} is a 1 pass implementation of
connected components labelling. Here it is applied to
identify disjunt patches within a distribution. \cr \cr The
raster matrix can be a raster of class 'asc' (adehabitat
package), 'RasterLayer' (raster package) or
'SpatialGridDataFrame' (sp package).
}
\examples{
#define a simple binary matrix
tmat = { matrix(c( 0,0,0,1,0,0,1,1,0,1,
                   0,0,1,0,1,0,0,0,0,0,
                   0,1,NA,1,0,1,0,0,0,1,
                   1,0,1,1,1,0,1,0,0,1,
                   0,1,0,1,0,1,0,0,0,1,
                   0,0,1,0,1,0,0,1,1,0,
                   1,0,0,1,0,0,1,0,0,1,
                   0,1,0,0,0,1,0,0,0,1,
                   0,0,1,1,1,0,0,0,0,1,
                   1,1,1,0,0,0,0,0,0,1),nr=10,byrow=TRUE) }

#do the connected component labelling
ccl.mat = ConnCompLabel(tmat)
ccl.mat
image(t(ccl.mat[10:1,]),col=c('grey',rainbow(length(unique(ccl.mat))-1)))
}
\author{
Jeremy VanDerWal \email{jjvanderwal@gmail.com}
}
\references{
Chang, F., C.-J. Chen, and C.-J. Lu. 2004. A linear-time
component-labeling algorithm using contour tracing
technique. Comput. Vis. Image Underst. 93:206-220.
}
\seealso{
\code{\link{PatchStat}}, \code{\link{ClassStat}}
}

