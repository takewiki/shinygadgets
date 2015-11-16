% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layout.R
\name{runGadget}
\alias{runGadget}
\title{Run a gadget}
\usage{
runGadget(app, server = NULL, port = getOption("shiny.port"),
  preferViewer = TRUE)
}
\arguments{
\item{app}{Either a Shiny app object as created by
\code{\link[=shiny]{shinyApp}} et al, or, a UI object.}

\item{server}{Ignored if \code{app} is a Shiny app object; otherwise, passed
along to \code{shinyApp} (i.e. \code{shinyApp(ui = app, server = server)}).}

\item{port}{See \code{\link[=shiny]{runApp}}.}

\item{preferViewer}{Pass \code{TRUE} if the gadget is designed to work best
in the RStudio Viewer pane. The advantage of the Viewer pane is that it
sits conveniently inside the RStudio IDE. The disadvantage is its small
size, relative to standalone browser windows.}
}
\value{
The value returned by the gadget.
}
\description{
Similar to \code{runApp}, but if running in RStudio, defaults to viewing the
app in the Viewer pane.
}
\examples{
\dontrun{
library(shiny)

ui <- gadgetPage(...)

server <- function(input, output, session) {
  ...
}

# Either pass ui/server as separate arguments...
runGadget(ui, server)

# ...or as a single app object
runGadget(shinyApp(ui, server))
}

}
