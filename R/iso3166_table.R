library(rvest)
library(dplyr)

url <- "https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes"

all_tables <- read_html(url) %>%
  html_table(header = TRUE, fill = TRUE)


as.character(all_tables[[1]][1,])

table_names <- c(
  "country",
  "alpha_2",
  "alpha_3",
  "numeric"
)

nrows <- nrow(all_tables[[1]])

iso3166_table <- tibble(
  country = all_tables[[1]][2:nrows,1] %>%
    pull %>%


usethis::use_data(iso3166_table.R, overwrite = TRUE)

