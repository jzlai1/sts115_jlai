# Directions:

# This file contains homework questions for the lecture on data forensics
# and statistics. Questions appear as comments in the file. 

# The first four questions are narrative only, meaning you can just write an
# answer and do not need to write computer code. For other questions, please 
# see the Grading Criteria Canvas Page for specific guidance on what
# we expect from you regarding assignment responses.

# Once you have completed the assignment, follow the Submission Instructions 
# on Canvas Pages section to add, commit, and push this to your GitHub repository. 

# Some questions have multiple parts - make sure to read carefully and
# answer all of them. The majority of points lost in homework come from
# careless skipping over question parts.  

###############################################################################

# 1. What is a Frequency Distribution? [comprehension]

# A frequency distribution is a table which shows the frequency of every individual data in a sample. 

# 2. What is a Relative Frequency Distribution? [comprehension]

# A relative frequency distribution is a frequency distribution which shows the proportionate value of each data compared to the entire sample.

# 3. What is Deviation a measure of? [comprehension]

# Deviation is a measure of how far a data point is from the mean.

# 4. What is Standard Deviation? [comprehension]

# Standard deviation is a measure of the spread of every data point from the mean.

# 5. Load the Craigslist data and then compute:

# Reading the Craigslist data
cl <- read.csv("cl_rentals.csv")

#     a. The number of rows and columns. [code completion + comprehension]
nrow(cl) # Obtain number of rows
# There are 2987 rows
ncol(cl) # Obtain number of columns
# There are 20 columns
#     b. The names of the columns. [code completion + comprehension]
names(cl) # Obtain names of columns
# "title"        "text"         "latitude"     "longitude"    "city"         "date_posted"  "date_updated" "price"        "deleted"     
# "sqft"         "bedrooms"     "bathrooms"    "pets"         "laundry"      "parking"      "craigslist"   "shp_place"    "shp_city"    
# "shp_state"    "shp_county" 
#     c. A structural summary of the data. [code completion + comprehension]
str(cl) # Obtain structural summary of data
# 'data.frame':	2987 obs. of  20 variables:
#  $ title       : chr  "$1,125 / 1br - 550ft2 - 1Bedroom Prime Location -2520 S Limited Access/Gated $1125 Avail Now (2520 S St)" "$1,449 / 1br - 680ft2 - 1x1 with washer & dryer in unit! Move in ready! (The Phoenix/Sacramento/Folsom/SF)" "$1,449 / 1br - 680ft2 - 1x1 with washer & dryer in unit! Move in ready! (The Phoenix/Sacramento/Folsom/SF)" "$1,479 / 1br - 680ft2 - 1x1 with washer & dryer in unit! Move in ready! (The Phoenix/Sacramento/Folsom/SF)" ...
#  $ text        : chr  "QR Code Link to This Post\n            \n        \n* SEE MY OTHER MIDTOWN 1 bedroom apts-text for web site\n*An"| __truncated__ "QR Code Link to This Post\n            \n        \n Lease our 1x1 Apartment with Che starting at $1449+    Pric"| __truncated__ "QR Code Link to This Post\n            \n        \n Lease our 1x1 Apartment with Che starting at $1449+    Pric"| __truncated__ "QR Code Link to This Post\n            \n        \n Lease our 1x1 Apartment with Che starting at $1479+    Pric"| __truncated__ ...
#  $ latitude    : num  38.6 38.6 38.6 38.6 38.6 ...
#  $ longitude   : num  -121 -121 -121 -121 -121 ...
#  $ city        : chr  "2520 S St" "The Phoenix/Sacramento/Folsom/SF" "The Phoenix/Sacramento/Folsom/SF" "The Phoenix/Sacramento/Folsom/SF" ...
#  $ date_posted : chr  "2021-02-04 15:03:12" "2021-03-02 12:41:17" "2021-03-02 13:26:17" "2021-03-03 10:02:05" ...
#  $ date_updated: chr  "2021-03-03 08:41:39" NA NA NA ...
#  $ price       : int  1125 1449 1449 1479 1414 1441 1615 1660 1877 1611 ...
#  $ deleted     : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...
#  $ sqft        : int  550 680 680 680 680 680 816 816 916 916 ...
#  $ bedrooms    : int  1 1 1 1 1 1 2 2 2 2 ...
#  $ bathrooms   : num  1 1 1 1 1 1 1 1 2 2 ...
#  $ pets        : chr  NA "both" "both" "both" ...
#  $ laundry     : chr  "shared" "in-unit" "in-unit" "in-unit" ...
#  $ parking     : chr  "off-street" "covered" "covered" "covered" ...
#  $ craigslist  : chr  "sacramento" "sacramento" "sacramento" "sacramento" ...
#  $ shp_place   : chr  "Sacramento" "Sacramento" "Sacramento" "Sacramento" ...
#  $ shp_city    : chr  "Sacramento" "Sacramento" "Sacramento" "Sacramento" ...
#  $ shp_state   : chr  "CA" "CA" "CA" "CA" ...
#  $ shp_county  : chr  "Sacramento" "Sacramento" "Sacramento" "Sacramento" ...
#     d. A statistical summary of the data. [code completion + comprehension]
summary(cl) # Obtain statistical summary of data
# title               text              latitude       longitude          city           date_posted        date_updated      
# Length:2987        Length:2987        Min.   :33.99   Min.   :-123.2   Length:2987        Length:2987        Length:2987       
# Class :character   Class :character   1st Qu.:38.55   1st Qu.:-121.5   Class :character   Class :character   Class :character  
# Mode  :character   Mode  :character   Median :38.59   Median :-121.4   Mode  :character   Mode  :character   Mode  :character  
# Mean   :38.59   Mean   :-121.5                                                           
# 3rd Qu.:38.67   3rd Qu.:-121.3                                                           
# Max.   :40.19   Max.   : -76.5                                                           
# NA's   :3       NA's   :3                                                                
# price        deleted             sqft            bedrooms       bathrooms        pets             laundry            parking         
# Min.   :    1   Mode :logical   Min.   :  200.0   Min.   :0.000   Min.   :1.00   Length:2987        Length:2987        Length:2987       
# 1st Qu.: 1471   FALSE:2987      1st Qu.:  681.0   1st Qu.:1.000   1st Qu.:1.00   Class :character   Class :character   Class :character  
# Median : 1730                   Median :  801.0   Median :2.000   Median :1.00   Mode  :character   Mode  :character   Mode  :character  
# Mean   : 1764                   Mean   :  881.5   Mean   :1.529   Mean   :1.36                                                           
# 3rd Qu.: 1975                   3rd Qu.: 1000.0   3rd Qu.:2.000   3rd Qu.:2.00                                                           
# Max.   :15630                   Max.   :88900.0   Max.   :7.000   Max.   :4.00                                                           
# NA's   :35                      NA's   :347       NA's   :10      NA's   :10                                                             
# craigslist         shp_place           shp_city          shp_state          shp_county       
# Length:2987        Length:2987        Length:2987        Length:2987        Length:2987       
# Class :character   Class :character   Class :character   Class :character   Class :character  
# Mode  :character   Mode  :character   Mode  :character   Mode  :character   Mode  :character  

# 6. The goal of this exercise is to compute the number of missing values in
#    every column of the Craigslist data.
#
#    a. Write a function called `count_na` that accepts a vector as input and
#       returns the number of missing values in the vector. Confirm that your
#       function works by testing it on a few vectors. 
#.      [code completion + comprehension]
count_na <- function(vector) {
  sum(is.na(vector))
}
count_na(cl$title)
# 0 missing values
count_na(cl$latitude)
# 3 missing values
count_na(cl$city)
# 952 missing values
count_na(cl$price)
# 35 missing values
#    b. Test your function on the `pets` column from the Craigslist data. The
#       result should be 14. If you get an error or a different result, try
#       part a again.
#       [code completion + comprehension]
count_na(cl$pets)
# 14 missing values
#    c. Use an apply function to apply your function to all of the columns in
#       the Craigslist data set. Include the result in your answer.
#       [code completion + comprehension]
sapply(cl, count_na)
# title         text     latitude    longitude         city  date_posted date_updated        price      deleted         sqft     bedrooms 
# 0            0            3            3          952            0         1801           35            0          347           10 
# bathrooms         pets      laundry      parking   craigslist    shp_place     shp_city    shp_state   shp_county 
# 10           14            0            0            0           24          650            3            3 
#    d. Which columns have 0 missing values? [comprehension]
# "title", "text", "date_posted", "deleted", "laundry", "parking", and "craiglist" all have 0 missing values.


# 7. What time period does this data cover? Hint: convert the `date_posted`
#    column to an appropriate data type, then use the `range` function.
#    [code completion + comprehension]
cl$date_posted <- as.Date(cl$date_posted)
time_period <- range(cl$date_posted)
print(time_period)
# The time period covers from 2021-01-30 to 2021-03-04
# 8. Compute the mean price for each pets category. Based on the means, are
#    apartments that allow pets typically more expensive? Explain, being
#    careful to point out any subtleties in the result.
#    [code completion + comprehension + interpretation]
tapply(cl$price, cl$pets, mean, na.rm = TRUE)
#     both     cats     dogs     none 
# 1771.407 1531.630 1828.742 1740.128 
# Apartments that allow pets are not necessarily more expensive than apartments that do not allow pets. From the computation, we can see that apartments that do not allow pets roughly cost $1740 while apartments that allow both are $1771, apartments that allow cats are $1531, and apartments that allow dogs are $1828. One thing that could be gathered is that apartments that allow dogs are on average more expensive than apartments that allow cats, dogs and cats, or neither.

# 9. The `sort` function sorts the elements of a vector. For instance, try
#    running this code:
#
    x = c(4, 5, 1)
    sort(x)
#    
#    Another way to sort vectors is by using the `order` function. The order
#    function returns the indices for the sorted values rather than the values
#    themselves:
#
    x = c(4, 5, 1)
    order(x)
#
#    These can be used to sort the vector by subsetting:
#
    x[order(x)]
#    
#    The key advantage of `order` over `sort` is that it can also be used to
#    sort one vector based on another, as long as the two vectors have the same
#    length.
#    
#    Create two vectors with the same length, and use one to sort the elements
#    of the other. Explain how it (should) work.
#    [code completion + comprehension]
values = c(12, 9, 18, 6100, 411, 89)
sort_values = c(6, 2, 3, 1, 4, 2)
values[sort_values]
# By calling sort_values on values, I should obtain the 6th element of 'values' first, then the 2nd, then the 3rd, then the 1st, then the 4th, then the 2nd.
# I should get '89    9   18   12 6100    9'

# 10. Use the `order` function to sort the rows of the Craigslist data set
#     based on the `sqft` column. [code completion + comprehension]
#
#     a. Compute a data frame that contains the city, square footage, and price
#        for the 5 largest apartments. [code completion + comprehension]
tail(cl[order(cl$sqft, na.last = FALSE), c("city", "sqft", "price")], n = 5)
#     b. Do you think any of the 5 square footage values are outliers? Explain
#        your reasoning. [interpretation]
# The 8190 sqft in Roseville and the 88900 sqft in Sacramento seem to be outliers because the other three square footage values above seem to be around a similar value. Jumping from 2500 to 8190 and then again to 88900 seem to be outliers.
#     c. Do you think any of the 5 square footage values are erroneous
#        (incorrect in the data)? [interpretation]
# I think that the 8190 sqft property in Roseville could be a mansion based on a quick Google search, so that could be a possible listing. However, the 88900 sqft property in Sacramento seems to be an error in the data. It seems wildly unlikely that the square footage is realistic.


