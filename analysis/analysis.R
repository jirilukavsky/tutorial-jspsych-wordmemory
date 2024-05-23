library(tidyverse)
library(jspsychread)

fn <- file.path("analysis", "results.json")
d <- read_jspsych(fn)

d

trials <-
  d |>
  filter(
    trial_type == trial_types$html_keyboard_response,
    trial_index >= 4,
    trial_index < 8
  )

d_trials <-
  trials |>
  select(record, trial_index, raw) |>
  process_records(.using = parse_html_keyboard_response) |>
  unnest(processed)

d_trials <-
  d_trials |>
  mutate(
    word = raw |> map_chr("word", .default = NA_character_),
    expected = raw |> map_chr("expected", .default = NA_character_),
    correct = raw |> map_lgl("correct", .default = NA_integer_),
  ) |>
  # remove raw data and HTML
  select(-raw, -stimulus) |>
  # remove feedbacks
  filter(!is.na(expected))

# voila
d_trials
