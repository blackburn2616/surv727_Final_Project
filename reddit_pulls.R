library(tidytext)
library(RedditExtractoR)


posts <- find_thread_urls(subreddit = "narcolepsy",
                          sort_by = "new",
                          period = "month")
head(posts$url)
write.csv(posts, "r_narc_nov11.csv")