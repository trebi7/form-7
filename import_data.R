library(tidyverse)
library(robotoolbox)


kobo_setup(url = "https://kf.kobotoolbox.org",
           token = Sys.getenv('MY_TOKEN'))

asset <- kobo_asset(Sys.getenv('MY_UID'))


asset |> 
  kobo_asset() |>
  kobo_data() |> 
  write_rds('mydf.rds')