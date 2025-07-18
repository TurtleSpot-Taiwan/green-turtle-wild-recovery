# 📊 Code Summary

This folder contains R scripts used to analyze and visualize the study of 
**Long-term wild recovery and resilience of green turtles (Chelonia mydas) to various anthropogenic injuries**

## Contents

- `RecoveryTrajectories.R`:  
  Processes wound surface area measurements and generates healing progression plots per injury.

- `HealingRate.R`:  
  Calculates relative healing rates (% healed per day) between each observed interval using the formula:  
  \[
  y_i = \frac{\left(1 - \frac{a_i}{a_0}\right) \cdot 100 - \left(1 - \frac{a_{i-1}}{a_0}\right) \cdot 100}{t_i - t_{i-1}}
  \]

## Input Data

These scripts rely on `data/Area_Measurement.csv`, which contains wound area observations over time for each injury case.

## Output

- Recovery trajectories plots (SVG)
- Healing rate summary tables

## Requirements

Install the following R packages before running:
```r
install.packages(c("dplyr", "ggplot2", "purrr", "tidyverse", "svglite", "readr"))
