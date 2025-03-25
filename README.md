# IPL Data Visualization Project

A data visualization project analyzing the Indian Premier League (IPL) datasets from 2008 to 2023. This repository contains an R script to create a mosaic plot for match wins distribution, a Tableau workbook for various other visualizations, and the final project report.

---

## Table of Contents
1. [Overview](#overview)
2. [Repository Structure](#repository-structure)
3. [Setup and Instructions](#setup-and-instructions)
   - [R Script: Mosaic Plot](#r-script-mosaic-plot)
   - [Tableau Visualizations](#tableau-visualizations)
4. [Project Report](#project-report)
5. [Team Credits](#team-credits)
6. [Additional Notes](#additional-notes)

---

## Overview
This project explores IPL match data to derive insights using various visualization techniques. It includes:
- An **R script** (`R/Mosaic_Plot.R`) for generating a mosaic plot using the `merged.csv` dataset.
- A **Tableau workbook** (`Tableau/IPL_Visualizations.twb`) containing additional interactive visualizations.
- A detailed **project report** (`docs/IPL_DSC_465_FInal_Report.pdf`) describing the analysis, methodology, and key insights.

---

## Repository Structure

**R/:** Contains the R script (Mosaic_Plot.R) used to create the mosaic plot.

**Tableau/:** Holds the Tableau workbook (IPL_Visualizations.twb) which includes all the additional visualizations created in Tableau.

**data/:** Contains the merged dataset (merged.csv) that is used by the R script and Tableau for generating visualizations.

**output/:** Contains all the final outputs of the project in .png format.

**docs/:** Contains the final project report (IPL_DSC_465_FInal_Report.pdf).

**README.md:** Provides an overview of the project, detailed setup instructions, usage guidelines for both the R script and Tableau file, and credit information for team members.

--- 

## Setup and Instructions

### R Script: Mosaic Plot

**Prerequisites:**
- **RStudio** or any R IDE.
- R packages: `ggplot2`, `ggmosaic`, and `dplyr`. Install them (if not already installed) by running:
  ```r
  install.packages(c("ggplot2", "ggmosaic", "dplyr"))
  
**Instructions:**
1. **Import Data:** Open RStudio and import the merged.csv file (located in the data/ folder). You can use RStudio’s GUI or the command:
   ```r
   merged <- read.csv("data/merged.csv")

2. **Run the Script:** Open R/Mosaic_Plot.R in RStudio and run the entire script. This will generate the mosaic plot which visualizes IPL match wins by result type.

3. **View/Save Output:** The generated plot will be displayed. If you want to save it, you can add code to export the plot (for example, using ggsave()).

### Tableau Visualizations

  - Open the Tableau workbook file Tableau/IPL_Visualizations.twb using Tableau Desktop.
  - This workbook contains additional interactive charts and visualizations built from the same merged dataset.
  - If required, update the data source path within Tableau to point to the data/merged.csv file.

---

## Project Report
- For detailed analysis, methodology, and insights, refer to the final project report available in the docs/ folder:
  [IPL_DSC_465_FInal_Report.pdf](docs/IPL_DSC_465_FInal_Report.pdf)

---

## Team Credits
- This project was completed as a group project. While this repository is hosted on my personal GitHub, I would like to acknowledge the contributions of my team 
  members:
  - Pradeep Shane
  - Kothari Ayush Sachin
  - Shiv Gandhi

- My specific contributions include data preprocessing and the creation of the mosaic plot using R. Also I created a Proportional Stacked Bar Chart, Stacked bar chart, and tree map in Tableau.

---

## Additional Notes
- **Data:** The dataset (merged.csv) is a merged version of the IPL deliveries.csv and matches.csv, created using an inner join on the match ID.
