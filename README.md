## Language Model Generation
The data has been collected from [https://www.kaggle.com/data/35739](Kaggle). Since this was a fun project I was doing myself, I tried to build a web scraper myself, but that didn't work out very well, so I've used a pre-scraped Twitter API dataset, freely available on Kaggle.
There are four main tasks:
1. Collecting and cleaning the data (intro.R)
2. Processing the corpus data (processing.R)
3. Tokenizing the processed strings (tokenize.R)
4. Applying the model on the tokenized strings (eda.R)

The details of the model can be found in the two R-Markdown reports (prelimreport.rmd, textpredictor.rmd).
