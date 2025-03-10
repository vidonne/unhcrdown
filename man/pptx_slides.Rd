% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pptx_slides.R
\name{pptx_slides}
\alias{pptx_slides}
\title{Convert to UNHCR branded Powerpoint presentation}
\usage{
pptx_slides(...)
}
\arguments{
\item{...}{extra parameters to pass to \code{officedown::rpptx_document}}
}
\value{
An R Markdown output format.
}
\description{
Format for converting from R Markdown to an UNHCR branded Powerpoint presentation
}
\examples{
\dontrun{
# Requires pandoc

# Create an R Markdown example file
rmd_content <- "---
 title: 'Example UNHCR PowerPoint Presentation'
 output: unhcrdown::pptx_slides
 ---

 ## Introduction

 This is an example of a UNHCR-branded PowerPoint presentation
 created using `unhcrdown::pptx_slides`.
 "

# Write the R Markdown content to a file
example_file <- tempfile(fileext = ".Rmd")
writeLines(rmd_content, example_file)

# Render the R Markdown file
rmarkdown::render(example_file,
  output_format = unhcrdown::pptx_slides(),
  output_dir = tempdir()
)
}
}
