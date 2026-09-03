# Convert to UNHCR branded Word document

Format for converting from R Markdown to an UNHCR branded Word simple
document

## Usage

``` r
docx_simple(...)
```

## Arguments

- ...:

  extra parameters to pass to
  [`officedown::rdocx_document`](https://davidgohel.github.io/officedown/reference/rdocx_document.html)

## Value

An R Markdown output format.

## Examples

``` r
if (FALSE) { # \dontrun{
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
} # }
```
