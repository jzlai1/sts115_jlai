# emf - hi josh - I see that this was submitted a bit late - no points off this time. but make sure that future assignments are on time! response is incomplete as it is missing an identification of where code in the course reader breaks. code below could also use more annotation to walk us through your process.


url = "https://theaggie.org/category/features/"
doc = read_html(url)
xml_find_all(doc, "//div[contains(@class, 'td_block_inner')]")

library(rvest)

parse_article_links <- function(page) {
  # Get article URLs
  div <- html_nodes(page, ".entry-title a")
  urls <- html_attr(div, "href")
  
  # Get next page URL
  next_page <- html_nodes(page, ".next.page-numbers")
  next_url <- ifelse(length(next_page) > 0, html_attr(next_page, "href"), NA)
  
  # Using a list allows us to return two objects
  list(urls = urls, next_url = next_url)
}

# Starting URL
url <- "https://theaggie.org/category/features/"
article_urls <- list()
i <- 1

# On the last page, the next URL will be `NA`.
#while (!is.na(url)) {
while (!is.na(url)&& i<=5) { # emf - to only scrape first 5 pages
  # Download and parse the page.
  page <- read_html(url)
  result <- parse_article_links(page)
  
  # Save the article URLs in the `article_urls` list. The variable `i` is the
  # page number.
  article_urls[[i]] <- result$urls
  i <- i + 1
  
  # Set the URL to the next URL.
  url <- result$next_url
  
  # Sleep for 1/30th of a second so that we never make more than 30 requests
  # per second.
  Sys.sleep(1/30)
}


