# Project 04: Bank Marketing Campaign Response Analytics

## Objective

Predict whether a banking customer will subscribe to a term deposit after a direct marketing campaign, then translate the model into campaign targeting and channel optimization recommendations.

## Business Questions

- Which customer profiles respond best to marketing campaigns?
- Which contact channels and campaign histories drive conversion?
- How can marketing reduce wasted outreach while improving conversion?
- Which customers should be prioritized for the next campaign?

## Contents

- `data_marketing`: Original UCI Bank Marketing dataset download and extracted files.
- `data_source.md`: Dataset source, citation, license, and download URL.
- `sql schema.sql`: Table definition for campaign response analysis.
- `sql analysis_queries.sql`: Conversion, channel, segment, and campaign efficiency queries.
- `train_model.py`: Python classification model for term deposit subscription.

## Model

The Python pipeline loads the original semicolon-delimited UCI file, trains classification models, exports model comparison metrics, and creates customer-level subscription probabilities.

