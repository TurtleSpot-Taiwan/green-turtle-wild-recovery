# green-turtle-wild-recovery

---
This repository contains the data, analysis code, and documentation associated with the study:

Fone et al. (2025) 
**Long-term wild recovery and resilience of green turtles (Chelonia mydas) to various anthropogenic injuries**

---

## 🐢 Project Summary

This repository compiles the long-term observations of green turtle injury recovery in the wild from a coastal foraging ground at Liuqiu Island, Taiwan. By integrating two complementary photo-ID datasets: (1) opportunistic data from citizen science project TurtleSpot Taiwan and (2) a two-year snorkel-based survey (Fong et al., in review), we assessed the prevalence of injuries, estimated healing times by cause and severity, and tracked recovery trajectories of individual turtles. The findings provide rare in situ evidence of resilience and underscore the importance of long-term monitoring at key foraging sites.

---

## Repository Structure

```text
├── R/                             # R scripts for analysis
│   ├── RecoveryTrajectories.R
│   └── HealingRate.R
│
├── data/                          # Input datasets
│   ├── Area_Measurement.csv
│   ├── Area_Measurement.xlsx
│   ├── HealedCases_Occurrences.csv
│   ├── HealedCases_Occurrences.xlsx
│   ├── Injured_turtles.csv
│   └── Injured_turtles.xlsx
│
├── doc/                           # Documentation and future files
│   └── HealedCases_SightingPhotos/    
│   └── paper/                     # [Embargoed] Final manuscript PDF will be uploaded upon journal publication.
├── .gitignore
├── LICENSE (CC0 1.0)
└── README.md
```

---

## Getting Started

### Prerequisites
Make sure the following R packages are installed:
```r
install.packages(c("dplyr", "ggplot2", "purrr", "tidyverse", "svglite", "openxlsx"))
```

### Run analyses
1. **RecoveryTrajectories.R** — Generate healing progression plots per turtle.
2. **HealingRate.R** — Compute healing rate (percent healed per day) between intervals.

---

## Licensing and Data Availability

All code and data files (except those under `doc/HealedCases_SightingPhotos/`) are released under **CC0 1.0 Universal (Public Domain Dedication)**. You are free to use, modify, and redistribute without permission.

📝 *Note:* Figures, tables, and certain documentation files in the `doc/` folder will be added or fully released **after the associated paper is published**.

---

## Citation
Please cite the following when using data or code from this repository:

Fong, C.-L., et al. (2025). *Long-term wild recovery and resilience of green turtles (Chelonia mydas) to various anthropogenic injuries*. In submission.

---

## Contact

📧 Contact authors:  
Chia-Ling Fong  
chialingfong [at] gmail.com

TurtleSpot Taiwan
turtlespotintw [at] gmail.com

---

