library(tidyverse)
library(tidytext)

preprocess_text <- function(data) {
  # Tokenize and remove stopwords
  data %>%
    unnest_tokens(word, text) %>%
    anti_join(stop_words)
}