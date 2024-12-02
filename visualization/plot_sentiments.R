library(ggplot2)

plot_sentiment_distribution <- function(sentiment_data) {
  sentiment_data %>%
    summarise(positive = sum(positive), negative = sum(negative)) %>%
    pivot_longer(cols = c(positive, negative), names_to = "sentiment", values_to = "count") %>%
    ggplot(aes(x = sentiment, y = count, fill = sentiment)) +
    geom_bar(stat = "identity") +
    theme_minimal() +
    labs(title = "Overall Sentiment Distribution", x = "Sentiment", y = "Count") +
    scale_fill_manual(values = c("positive" = "steelblue", "negative" = "firebrick"))
}

plot_sentiment_trend <- function(sentiment_data) {
  sentiment_data %>%
    ggplot(aes(x = timestamp, y = net_sentiment)) +
    geom_line(color = "darkgreen", size = 1) +
    geom_point(color = "darkgreen") +
    theme_minimal() +
    labs(title = "Net Sentiment Over Time", x = "Date", y = "Net Sentiment") +
    geom_hline(yintercept = 0, linetype = "dashed", color = "grey")
}