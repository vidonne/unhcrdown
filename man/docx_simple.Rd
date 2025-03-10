% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docx_simple.R
\name{docx_simple}
\alias{docx_simple}
\title{Convert to UNHCR branded Word document}
\usage{
docx_simple(...)
}
\arguments{
\item{...}{extra parameters to pass to \code{officedown::rdocx_document}}
}
\value{
An R Markdown output format.
}
\description{
Format for converting from R Markdown to an UNHCR branded Word simple document
}
\examples{
\dontrun{
# Requires pandoc

# Create an R Markdown example file
rmd_content <- "---
 title: 'Example UNHCR Word Document'
 output: unhcrdown::docx_simple
 ---

 ## Introduction

 This is an example of a UNHCR-branded Word document created using `unhcrdown::docx_simple`.
 "

# Write the R Markdown content to a file
example_file <- tempfile(fileext = ".Rmd")
writeLines(rmd_content, example_file)

# Render the R Markdown file
rmarkdown::render(example_file,
  output_format = unhcrdown::docx_simple(),
  output_dir = tempdir()
)
}
}
