# R script to install key packages for the course

# Packages to install
packages <-
  c(
    "corpora",
    "factoextra",
    "janitor",
    "kableExtra",
    "ggfortify",
    "scales",
    "tidytext",
    "tokenizers",
    "udpipe",
    "spacyr",
    "skimr",
    "swirl",
    "remotes",
    "glue",
    "reprex",
    "clipr",
    "quanteda",
    "readtext",
    "languageR",
    "sessioninfo",
    "jiebaR",
    "tinytex"
  )

# CRAN mirror
chooseCRANmirror(graphics = FALSE, ind = 1)

# Install packages
install.packages(packages)

# Packages from GitHub
github <-
  c(
    "qtalr/qtalrkit",
    "quanteda/quanteda.corpora",
    "TalkBank/TBDBr"
  )

# Install packages from GitHub
remotes::install_github(github)

# Install tinytex
tinytex::install_tinytex()
