# Function for UNHCR paged simple template

Function for UNHCR paged simple template

## Usage

``` r
paged_simple(back_html = TRUE, other_css = NULL, number_sections = FALSE, ...)
```

## Arguments

- back_html:

  Back-cover HTML including contact information

- other_css:

  Add extra css

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
 subtitle: 'Paged Report Simple'
 output: unhcrdown::paged_simple
 ---

 ## Introduction

 This is an example of a UNHCR-branded HTML paged report siple using `unhcrdown::paged_simple`.
 "

# Write the R Markdown content to a file
example_file <- tempfile(fileext = ".Rmd")
writeLines(rmd_content, example_file)

# Render the R Markdown file
rmarkdown::render(example_file,
  output_format = unhcrdown::paged_simple(),
  output_dir = tempdir()
)

# View the rendered HTML file
browseURL(render_file)
} # }
```
