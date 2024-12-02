# Sentiment Analysis Project

This project performs sentiment analysis on customer feedback data using R. It processes text data, analyzes sentiments using the Bing lexicon, and visualizes the results.

## Project Structure

- `data/`: Contains data generation and preprocessing scripts
  - `generate_data.R`: Creates sample dataset
  - `preprocess.R`: Handles text preprocessing
- `analysis/`: Contains analysis scripts
  - `sentiment_analysis.R`: Performs sentiment analysis
- `visualization/`: Contains visualization scripts
  - `plot_sentiments.R`: Creates sentiment visualizations
- `main.R`: Main script that orchestrates the workflow

## Requirements

- R >= 4.0.0
- tidyverse
- tidytext
- lubridate

## Usage

Run the main script:
```R
source("main.R")
```