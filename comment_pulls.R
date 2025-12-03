library(RedditExtractoR)
library(tidyverse)

data_raw <- read.csv("r_narc_nov11.csv")

com_2 <- get_thread_content(data_raw$url)

threads2 <- com_2$threads

comments2 <- com_2$comments

write.csv(comments2, "narc_comments.csv")

write.csv(threads2, "narc_threads.csv")