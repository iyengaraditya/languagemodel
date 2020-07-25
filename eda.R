library(wordcloud)
wordcloud(
  words=names(combine_unigram_freq),
  freq=combine_unigram_freq, 
  scale=c(2,0.5), 
  max.words=100, 
  min.freq=3,
  random.order=FALSE, 
  rot.per=0.35, 
  use.r.layout=TRUE,
  colors=brewer.pal(8, "Dark2"))
wordcloud(
  words=names(combine_bigram_freq),
  freq=combine_bigram_freq, 
  scale=c(1,0.5), 
  max.words=100, 
  min.freq=3,
  random.order=FALSE, 
  rot.per=0.35, 
  use.r.layout=TRUE,
  colors=brewer.pal(8, "Dark2"))
wordcloud(
  words=names(combine_trigram_freq),
  freq=combine_trigram_freq, 
  scale=c(1,0.5), 
  max.words=100, 
  min.freq=3,
  random.order=FALSE, 
  rot.per=0.35, 
  use.r.layout=TRUE,
  colors=brewer.pal(8, "Dark2"))

par(mfrow = c(1,3), oma=c(0,0,3,0))
hist(log(combine_unigram_freq), breaks = 50, main = 'unigram count', xlab='log(frequency)', ylab='')
hist(log(combine_bigram_freq), breaks = 50, main = 'bigram count', xlab='log(frequency)', ylab='')
hist(log(combine_trigram_freq), breaks = 50, main = 'trigram count', xlab='log(frequency)', ylab='')
title("Combined Data NGram Counts",outer=T)