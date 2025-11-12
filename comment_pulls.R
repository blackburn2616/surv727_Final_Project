
# We search for submissions which contain the word 'validated' to subreddit 'narcolepsy'. 
#From the resulting df, we get the URLs pointing to each submission. 
validated_urls <- find_thread_urls(keywords = "validated",
                                   subreddit = "narcolepsy",
                                   sort_by = "new")

head(validated_urls$url)

#We next get the comments to the submissions that we pulled above using the URLs of the submissions as reference.

validated_content <- get_thread_content(urls = validated_urls$url[1:5])

#Using post_date (submission) and comm_date (comment), we can select submissions and comments 
#based on the time they were posted. Using link, we could try to obtain additional information 
#about submission content (e.g., link may post to a news article). Structure allows us to obtain 
#an overview of the comment structure. Most interestingly, comment gives us the content of the comment.


head(validated_content$comments)
