## Loading the datasets
suppressPackageStartupMessages(library(ngram))
con <- file("./final/en_US/en_US.news.txt", "r")
USnews <- readLines(con, skipNul = TRUE)
close(con)
con <- file("./final/en_US/en_US.blogs.txt", "r")
USblogs <- readLines(con, skipNul = TRUE)
close(con)
con <- file("./final/en_US/en_US.twitter.txt", "r")
UStwitter <- readLines(con, skipNul = TRUE)
close(con)
summarydata <- as.data.frame(cbind(c("US News", "US Blogs", "US Twitter"),
                     c(wordcount(USnews), wordcount(USblogs), wordcount(UStwitter)),
                     c(length(USnews), length(USblogs), length(UStwitter))))
names(summarydata)[1] <- "Source"
names(summarydata)[2] <- "Words"
names(summarydata)[3] <- "Lines"