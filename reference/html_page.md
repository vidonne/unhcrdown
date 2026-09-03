# Convert to UNHCR branded HTML website

Format for converting from R Markdown to an UNHCR branded HTML website

## Usage

``` r
html_page(...)
```

## Arguments

- ...:

  extra parameters to pass to
  [`rmarkdown::html_document`](https://pkgs.rstudio.com/rmarkdown/reference/html_document.html)

## Value

An R Markdown output format.

## Examples

``` r
if (FALSE) { # \dontrun{
# Requires pandoc

# Create an R Markdown example file
rmd_content <- "---
 title: 'Example UNHCR HTML Page'
 output: unhcrdown::html_page
 ---

 ## Introduction

 This is an example of a UNHCR-branded HTML page created using `unhcrdown::html_page`.
 "

# Write the R Markdown content to a file
example_file <- tempfile(fileext = ".Rmd")
writeLines(rmd_content, example_file)

# Render the R Markdown file
rmarkdown::render(example_file,
  output_format = unhcrdown::html_page(),
  output_dir = tempdir()
)

# View the rendered HTML file
browseURL(render_file)
} # }
```
