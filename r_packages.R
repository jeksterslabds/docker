repos <- "https://cran.rstudio.com"
source("https://raw.githubusercontent.com/jeksterslabds/jeksterslabRutils/master/R/util_txt2file.R")
source("https://raw.githubusercontent.com/jeksterslabds/jeksterslabRutils/master/R/util_user_lib.R")
util_user_lib()
install.packages(
  "remotes",
  repos = repos
)
install_github(
  c(
    "jalvesaq/colorout",
    "jeksterslabRds/jeksterslabRutils"
  )
)
