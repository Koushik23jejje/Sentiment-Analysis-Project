library(tidyverse)
library(tidytext)

analyze_sentiments <- function(data_tokens) {
  data_tokens %>%
    inner_join(get_sentiments("bing")) %>%
    count(timestamp, sentiment, sort = TRUE) %>%
    spread(sentiment, n, fill = 0) %>%
    mutate(net_sentiment = positive - negative)
}