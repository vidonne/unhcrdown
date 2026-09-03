# Convert to UNHCR branded HTML presentation

Format for converting from R Markdown to an UNHCR branded HTML
presentation

## Usage

``` r
html_slides(other_css = NULL, ...)
```

## Arguments

- other_css:

  Add extra css

- ...:

  extra parameters to pass to
  [`xaringan::moon_reader`](https://rdrr.io/pkg/xaringan/man/moon_reader.html)

## Value

An R Markdown output format.

## Examples

``` r
if (FALSE) { # \dontrun{
# Requires pandoc

# Create an R Markdown example file
rmd_content <- "---
 title: 'Example UNHCR HTML Slides'
 output: unhcrdown::html_slides
 ---

 ## Introduction

 This is an example of a UNHCR-branded HTML slides created using `unhcrdown::html_slides`.
 "

# Write the R Markdown content to a file
example_file <- tempfile(fileext = ".Rmd")
writeLines(rmd_content, example_file)

# Render the R Markdown file
rmarkdown::render(example_file,
  output_format = unhcrdown::html_slides(),
  output_dir = tempdir()
)

# View the rendered HTML file
browseURL(render_file)
} # }
```
