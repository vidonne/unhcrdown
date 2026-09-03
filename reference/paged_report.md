# Function for UNHCR paged report template

Function for UNHCR paged report template

## Usage

``` r
paged_report(
  front_img = NULL,
  img_to_dark = FALSE,
  other_css = NULL,
  toc = TRUE,
  toc_depth = 2,
  number_sections = FALSE,
  ...
)
```

## Arguments

- front_img:

  Cover image

- img_to_dark:

  Darken cover image

- other_css:

  Add extra css

- toc:

  Table of content

- toc_depth:

  Table of content depth

- number_sections:

  Number section headings

- ...:

  Arguments passed to pagedown::html_paged

## Value

An R Markdown output format.

## Examples

``` r
if (FALSE) { # \dontrun{
# Requires pandoc

# Create an R Markdown example file
rmd_content <- "---
 title: 'Example UNHCR HTML'
 subtitle: 'Paged Report'
 output: unhcrdown::paged_report
 ---

 ## Introduction

 This is an example of a UNHCR-branded HTML paged report using `unhcrdown::paged_report`.
 "

# Write the R Markdown content to a file
example_file <- tempfile(fileext = ".Rmd")
writeLines(rmd_content, example_file)

# Render the R Markdown file
rmarkdown::render(example_file,
  output_format = unhcrdown::paged_report(),
  output_dir = tempdir()
)

# View the rendered HTML file
browseURL(render_file)
} # }
```
