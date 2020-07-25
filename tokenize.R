library(RWeka)
library(slam)

Tokenizer <- function(x){NGramTokenizer(x, RWeka::Weka_control(min = 1, max = 1))}
unigram <- list(tokenize=words, bounds=list(global=c(10,Inf)))
BigramTokenizer <- function(x){NGramTokenizer(x, RWeka::Weka_control(min = 2, max = 2))}
bigram <- list(tokenize = BigramTokenizer, bounds=list(global=c(10,Inf)))
TrigramTokenizer <- function(x){NGramTokenizer(x, RWeka::Weka_control(min = 3, max = 3))}
trigram <- list(tokenize = TrigramTokenizer, bounds=list(global=c(10,Inf)))

combine_unigram <- TermDocumentMatrix(corpus, control=unigram)
combine_bigram <- TermDocumentMatrix(corpus, control=bigram)
combine_trigram <- TermDocumentMatrix(corpus, control=trigram)

combine_unigram_freq <- rowapply_simple_triplet_matrix(combine_unigram,sum)
combine_bigram_freq <- rowapply_simple_triplet_matrix(combine_bigram,sum)
combine_trigram_freq <- rowapply_simple_triplet_matrix(combine_trigram,sum)