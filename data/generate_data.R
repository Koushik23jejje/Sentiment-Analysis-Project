# Generate sample dataset for sentiment analysis
library(tidyverse)
library(lubridate)

generate_sample_data <- function(seed = 123) {
  set.seed(seed)
  
  sample_texts <- c(
    "I love this brand! It's amazing.", 
    "Terrible product, never buying again.",
    "Service is okay, but could be better.", 
    "Absolutely fantastic experience!",
    "Worst experience ever. Completely disappointed.", 
    "Highly recommend this!",
    "Mediocre service but decent quality.", 
    "Exceptional quality and fast delivery!",
    "This brand is terrible, very bad experience.", 
    "I'm quite satisfied with my purchase."
  )
  
  tibble(
    timestamp = seq(as.Date("2023-01-01"), by = "day", length.out = 100),
    text = sample(sample_texts, 100, replace = TRUE)
  )
}