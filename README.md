# Project Title

This contains replication materials for the POLS 501 project of *Your Name*

# Getting Started with the template

With the

1. rename `project_template.Rproj` to the same name as the directory you are using for your project. Your directoy name should also be an informative name related to your project.
2. Edit `README.md` to remove the "Getting started with the template" section.

# Install

This project depends on [R](https://cran.r-project.org/) (> 3.0.0).
You will need to install several R packages for this project:
```r
packages <- c("tidyverse")
install.packages(packages)
```

You may need to include other instructions about downloading the raw data (the data that goes in the  `data` directory) needed for the project.

# Organization

This project is organized in a manner following the guidance in Wilson, et. al. "[Good Enough Practices for Scientific Computing](https://arxiv.org/pdf/1609.00037v2.pdf)".



```
├── CHANGELOG.md
├── README.md
├── data
├── doc
├── project_template.Rproj
└── results
    ├── data
    ├── fig
    └── tables
```

- `CHANGELOG.md`: is a dated file with changes made to the project
- `data/`: contains the raw data used in the project
- `doc/`: contains documents such as the paper manuscript, codebooks, etc.
- `src/`: source code for the project.
   - `build.R` re-runs the entire data analysis
   - `common.R` contains R functions or code used in multiple files
   - `delete.R` deletes all analysis so you can rerun everything from scratch.
   - I include two scripts `tidy.R` and `analysis.R` because data cleaning and data analysis are often logical ways to separate the process. But you should split up your code into different scripts as needed.
- `results`: contains output from scripts, including intermediate data, figures, tables, etc.

*Note:* This template is one way to organize your analysis. Generally data, code, and documentation should be separate, as much as possible should be runnable via a script, and the original data should never be altered. Finally, important things are to be consistent and document it.

*Note:* You may need to alter this organization if you find you are doing most of your analysis in R markdown files.
