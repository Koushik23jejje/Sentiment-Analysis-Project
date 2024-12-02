# Main script to run sentiment analysis workflow
library(tidyverse)
library(tidytext)
library(lubridate)

# Source all required scripts
source("data/generate_data.R")
source("data/preprocess.R")
source("analysis/sentiment_analysis.R")
source("visualization/plot_sentiments.R")

# Generate data
data <- generate_sample_data()

# Preprocess text
data_tokens <- preprocess_text(data)

# Perform sentiment analysis
sentiment_results <- analyze_sentiments(data_tokens)

# Create visualizations
distribution_plot <- plot_sentiment_distribution(sentiment_results)
trend_plot <- plot_sentiment_trend(sentiment_results)

# Display plots
print(distribution_plot)
print(trend_plot)