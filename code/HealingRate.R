library(dplyr)
library(readr)

# Read data
df <- read_csv("Area_Measurement.csv")

# Compute healing rate for each interval
healing_df <- df %>%
  arrange(InjuryLable, Days) %>%
  group_by(InjuryLable) %>%
  mutate(
    a0 = first(Area),
    DayStart = lag(Days),
    DayEnd = Days,
    AreaStart = lag(Area),
    AreaEnd = Area,
    HealingRate = ((1 - AreaEnd / a0) * 100 - (1 - AreaStart / a0) * 100) / (DayEnd - DayStart),
    Interval = paste0(DayStart, "–", DayEnd)
  ) %>%
  filter(!is.na(HealingRate)) %>%
  ungroup() %>%
  select(InjuryLable, Interval, DayStart, DayEnd, AreaStart, AreaEnd, HealingRate)

# View table
print(healing_df)

# Save to CSV
write_csv(healing_df, "healing_rates_output.csv")
