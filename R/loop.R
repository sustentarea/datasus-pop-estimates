# library(cli)
# library(fs)
# library(groomr) # github.com/danielvartan/groomr
# library(here)

years <- 2000:2024

cli::cli_progress_bar(
  name = "Rendering files",
  total = length(years),
  clear = FALSE
)

for (i in years) {
  groomr::replace_in_file(
    file = here::here("index.qmd"),
    pattern = "^year <- \\d{4}$",
    replacement = paste0("year <- ", i)
  )

  system("quarto render")

  fs::dir_ls(here::here("data")) |> fs::file_delete()

  cli::cli_progress_update()
}

cli::cli_progress_done()
