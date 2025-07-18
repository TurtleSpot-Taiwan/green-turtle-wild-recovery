library(dplyr)
library(ggplot2)
library(readr)
library(svglite)

# Load and Prepare Data
df <- read_csv("Area_Measurement.csv")

df_clean <- df %>%
  filter(!is.na(Days), !is.na(Area)) %>%
  group_by(InjuryLable) %>%
  arrange(Days, .by_group = TRUE) %>%
  mutate(
    prop_healed = 1 - Area / first(Area)
  ) %>%
  ungroup()

# Plot: Healing Progression
p1 <- ggplot(df_clean, aes(x = Days, y = prop_healed, colour = InjuryLable, group = InjuryLable)) +
  geom_line(linewidth = 1) +
  geom_point(size = 3) +
  scale_y_continuous("Proportion healed", limits = c(0, 1)) +
  scale_x_continuous("Days since first sighting") +
  ggtitle("Healing progression (observed points only)") +
  theme_minimal(base_size = 13) +
  theme(legend.title = element_blank())

print(p1)

ggsave("healing_progression.svg", plot = p1,
       width = 8, height = 5, units = "in", device = "svg")

# Plot: With Trend Line 
p2 <- ggplot(df_clean, aes(x = Days, y = prop_healed)) +
  geom_point(aes(colour = InjuryLable), size = 3) +
  geom_line(aes(colour = InjuryLable), linewidth = 1) +
  geom_smooth(method = "lm", se = FALSE, colour = "black",
              linewidth = 1, aes(group = 1)) +
  labs(x = "Days since first sighting",
       y = "Proportion healed",
       title = "Healing progression with overall trend line") +
  theme_minimal(base_size = 13) +
  theme(legend.title = element_blank())

print(p2)

ggsave("healing_progression_trend.svg", plot = p2,
       width = 8, height = 5, units = "in", device = "svg")
