library(tidytext)
library(RedditExtractoR)

##Posts
#pull posts from reddit. I did this on November 11.
posts <- find_thread_urls(subreddit = "narcolepsy",
                          sort_by = "new",
                          period = "month")
write.csv(posts, "r_narc_nov11.csv")

#Add doc_id column
posts$doc_id <- seq_len(nrow(posts))
write.csv(posts, "r_narc_nov11.csv", row.names = FALSE)

##Comments
com_2 <- get_thread_content(posts$url) #this kicked me at 412 posts

threads2 <- com_2$threads
write.csv(threads2, "narc_threads.csv")

comments2 <- com_2$comments
write.csv(comments2, "narc_comments.csv")