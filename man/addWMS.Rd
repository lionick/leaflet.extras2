% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wms.R
\name{addWMS}
\alias{addWMS}
\title{Add Queryable WMS Layer}
\usage{
addWMS(
  map,
  baseUrl,
  layers = NULL,
  group = NULL,
  options = WMSTileOptions(),
  attribution = NULL,
  popupOptions = NULL,
  data = getMapData(map)
)
}
\arguments{
\item{map}{a map widget object created from \code{\link[leaflet]{leaflet}()}}

\item{baseUrl}{a base URL of the WMS service}

\item{layers}{vector or list of WMS layers to show. The name of the layer is
used as the \code{layerId} (for \code{\link[leaflet]{removeTiles}}
purposes)}

\item{group}{the name of the group the newly created layers should belong to
(for \code{\link[leaflet]{clearGroup}} and \code{\link[leaflet]{addLayersControl}} purposes).
Human-friendly group names are permitted--they need not be short,
identifier-style names. Any number of layers and even different types of
layers (e.g. markers and polygons) can share the same group name.}

\item{options}{List of further options. See
\code{\link[leaflet]{WMSTileOptions}}}

\item{attribution}{the attribution text of the tile layer (HTML)}

\item{popupOptions}{List of popup options. See
\code{\link[leaflet]{popupOptions}}. Default is NULL.}

\item{data}{the data object from which the argument values are derived; by
default, it is the \code{data} object provided to \code{leaflet()}
initially, but can be overridden}
}
\value{
the new \code{map} object
}
\description{
A Leaflet plugin for working with Web Map services, providing:
single-tile/untiled/nontiled layers, shared WMS sources, and
GetFeatureInfo-powered identify.
}
\examples{
library(leaflet)
library(leaflet.extras2)

leaflet() \%>\%
  addTiles(group = "base") \%>\%
  setView(9, 50, 5) \%>\%
  addWMS(baseUrl = "https://maps.dwd.de/geoserver/dwd/wms",
         layers = "dwd:BRD_1km_winddaten_10m",
      popupOptions = popupOptions(maxWidth = 600),
      options = WMSTileOptions(
        transparent = TRUE,
        format = "image/png",
        info_format = "text/html"))
}
\references{
\url{https://github.com/heigeo/leaflet.wms}
}
\concept{WMS Functions}
