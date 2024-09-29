---
layout: project
title: EU vs Virus
subtitle: May 2020
tag: project
---

## Background

In May 2020, an EUvsVirus hackathon took place which aimed to bring to develop solutions to help during the COVID-19 pandemic. Hundreds of teams submitted proposals of their innovative solutions. These proposals took the form of a large amount of text data. Together with other members of the Vienna Data Science community, I analysed the texts of the project proposals and cluterested similar texts together.

## Aim

The possible outcome of this clustering was that the EUvsVirus Hackathon organisers could connect different teams from around Europe who had similar interests and could possibly collaborate on their solutions in the future,

## Web Scraping

My main contributions in this collaborative project were scraping the anonymised text submission data from the EUvsVirus website and providing it to the team in a readable form.  In addition to scraping the data, I also made the code used for web scraping more robust by adding error handling in case of unsuccessful 'scrapes'. 

## Natural Language Processing

The main steps in text analysis are as follows (the notebook itself can be found [here](https://github.com/d4gv/EUvsVirus_ProjectClusters/blob/master/notebooks/3.0-ja-clustering2.ipynb)):

- Identifying commonly used headings and excluding them from further analysis.
- Splitting lines of text into individual words
- Excluding English stop words
- Stemming of words using the PorterStemmer from the nltk python package
- Extracting numerical information from the stemmed workds using Term Frequency Inverse Doccument Frequency (TF-IDF)
- Filtering our 'nonsense' words containing too many digits.
- Perform agglomerative clustering using cosine distance into 100 and 200 clusters.

## More Information

The code for this project can be found in the [GitHub Repository](https://github.com/d4gv/EUvsVirus_ProjectClusters).