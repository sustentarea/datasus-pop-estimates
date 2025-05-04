## Based on <https://github.com/hadley/r4ds/blob/main/_common.R>.

# Load packages -----

# library(brandr)
library(downlit)
library(ggplot2)
# library(here)
library(httpgd) # github.com/nx10/httpgd
# library(knitr)
library(magrittr)
library(ragg)
library(rlang)
# library(rutils) # github.com/danielvartan/rutils
library(showtext)
library(sysfonts)
library(vscDebugger) # github.com/ManuelHentschel/vscDebugger
library(xml2)

# Set general options -----

options(
  dplyr.print_min = 6,
  dplyr.print_max = 6,
  pillar.max_footer_lines = 2,
  pillar.min_chars = 15,
  scipen = 10,
  digits = 10,
  stringr.view_n = 6,
  pillar.bold = TRUE,
  width = 77 # 80 - 3 for #> comment
)

# Set variables -----

set.seed(2025)

# Set knitr -----

knitr::clean_cache() |> rutils:::shush()

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  root.dir = here::here(),
  dev = "ragg_png",
  dev.args = list(bg = "transparent"),
  fig.showtext = TRUE
)

# Set `brandr` options -----

options(BRANDR_BRAND_YML = here::here("_brand.yml"))

brandr_options <- list(
  "BRANDR_COLOR_SEQUENTIAL" =
    brandr::get_brand_color(c("primary", "secondary")),
  "BRANDR_COLOR_DIVERGING" =
    brandr::get_brand_color(c("primary", "white", "secondary")),
  "BRANDR_COLOR_QUALITATIVE" = c(
    brandr::get_brand_color("primary"),
    brandr::get_brand_color("secondary"),
    brandr::get_brand_color("tertiary"),
    brandr::get_brand_color("light-green"),
    brandr::get_brand_color("dark-red"),
    brandr::get_brand_color("black")
  )
)

for (i in seq_along(brandr_options)) {
  options(brandr_options[i])
}

# Set and load graph fonts -----

sysfonts::font_paths(here::here("ttf"))

sysfonts::font_add(
  family = "poppins",
  regular = here::here("ttf", "poppins-regular.ttf"),
  bold = here::here("ttf", "poppins-bold.ttf"),
  italic = here::here("ttf", "poppins-italic.ttf"),
  bolditalic = here::here("ttf", "poppins-bolditalic.ttf"),
  symbol = NULL
)

sysfonts::font_add(
  family = "dm-mono",
  regular = here::here("ttf", "dmmono-medium.ttf"),
  italic = here::here("ttf", "dmmono-mediumitalic.ttf"),
  symbol = NULL
)

showtext::showtext_auto()

# Set `ggplot2` theme -----

ggplot2::theme_set(
  ggplot2::theme_bw() +
  ggplot2::theme(
    text = ggplot2::element_text(
      color = brandr::get_brand_color("black"),
      family = "poppins",
      face = "plain"
    ),
    panel.background = ggplot2::element_rect(fill = "transparent"),
    plot.background = ggplot2::element_rect(
      fill = "transparent", color = NA
    ),
    panel.grid.major = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    legend.background = ggplot2::element_rect(fill = "transparent"),
    legend.box.background = ggplot2::element_rect(
      fill = "transparent", color = NA
    ),
    legend.frame = ggplot2::element_blank(),
    legend.ticks = ggplot2::element_line(color = "white")
  )
)

# Run `rbbt` -----

## Uncheck the option "Apply title-casing to titles" in Zotero Better BibTeX
## preferences (Edit > Settings > Better BibTeX > Miscellaneous).

# (2024-08-25)
# This function should work with any version of BetterBibTeX (BBT) for Zotero.
# Verify if @wmoldham PR was merged in the `rbbt` package (see issue #47
# <https://github.com/paleolimbot/rbbt/issues/47>). If not, install `rbbt`
# from @wmoldham fork `remotes::install_github("wmoldham/rbbt", force = TRUE)`.

quartor::bbt_write_quarto_bib(
  bib_file = here::here("references.bib"),
  dir = c("."),
  pattern = "\\.qmd$",
  wd = here::here()
)
