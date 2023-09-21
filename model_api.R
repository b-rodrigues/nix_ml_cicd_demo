get_model <- function(path){
  readRDS(path)
}

model <- get_model("_targets/objects/fit_boosted_trees")

v <- vetiver::vetiver_model(model, "lightgbm_model")

plumber::pr() |>  
  vetiver::vetiver_api(v) |>
  plumber::pr_run(port = 8088)

