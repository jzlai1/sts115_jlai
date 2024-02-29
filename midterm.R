# emf - excellent work!

################################################################
# This file contains questions for the midterm exam for        #
# IST008 Adventures in Data Science:  Social Science Edition,  #
# Quarter 1.  Winter Quarter, 2022.                            #
#                                                              #
# Questions appear as comments in the file.  Some questions    #
# require you to write computer code (R or Shell Script) as    #
# an answer and other questions ask you to provide text only   #
# explanations of computing and Data Science concepts.         #
# The phrase "[Text Answer]" appears immediately following     #
# each question that requires a tex only answer.               #
#                                                              #
# This is exam is designed to provide you with the chance      #
# to demonstrate your understanding of both the concepts       #
# and syntax of the methods deployed by Data Scientists.       #
# As such, even if you are unable to provide working code      #
# for questions that require you to code, we encourage you     #
# to provide pseudo code and/or a textual explanation of       #
# of your understanding of how one would approach the          #
# problem computationally, or even how the computer itself     #
# would approach the problem given you knowledge of how        #
# computers and programming languages work.                    #
#                                                              #
# Because problem solving is an essential part of being a      #
# Data Scientist, you are allowed to use any resources at      #
# your disposal to respond to the questions in this exam.      #
# This includes, but is not limited to, resources such as      #
# Google, Stack Overflow, the Course Reader, etc.  The only    #
# restriction is that you may not use live chat, messaging,    #
# email, discourse, Slack, or any other method of real-time    #
# communication with another member of the course or any       #
# other person to formulate your response.                     #
#                                                              #
# As with the homework assignments, place your answers to      #
# each question immediately following the question prompt.     #                                            #
################################################################


# Question 1. What is the command line symbol that provides 
# a shortcut to your "home" directory on your system.  For 
# example, what symbol would you use in place of "x" in the 
# command "cd x" if you wanted to use the cd command to move 
# into your home directory:

# If I wanted to navigate to my "home" directory, I would use 'cd ~'



# Question 2. Write R code to assign the value 7 to a variable "x":

x <- 7

# Question 3. Write R code that subtracts 3 from the variable "x" 
# and assigns the results to a variable "y":

y <- x - 3

# Question 4. Assign the values 1, 23, 6, 2, 19, 7 to a vector:

vec <- c(1, 23, 6, 2, 19, 7)


# Question 5. Run the code `“four” < “five”`. Paste the output 
# from R into a comment and explain why you think it provided 
# that result: [Text Answer]

"four" < "five"
# Output: [1] FALSE
# The output is false because the operator is comparing two strings, so it is comparing the lexicographic order of the two. Since they both start with f, the operator moves to the second character. Since the character 'o' comes after 'i' in the alphabet, "four" is greater than "five" hence why the output is FALSE.

# Question 6. Write a for loop that loops through each element in
# the vector you created in your answer to Question 4 and prints
# each value to screen:

for (i in vec) {
  print(i)
}


# Question 7. Assign the value 3 to a variable "x" and write
# a conditional statement that test whether x is less than 5.  
# if it is, print "Yay!" to screen:

x <- 3
if (x < 5) {
  print("Yay!")
}


# Question 8. Download the "wine_enthusiast_rankings.csv" file from
# the "data" directory in the "Files" area of the course Canvas
# website and then write code to load into a variable called "wine_revs":

wine_revs <- read.csv('wine_enthusiast_rankings.csv')


# Question 9.  Write code to determine the class of the "wine_revs"
# data object you created in Question 8 above:

class(wine_revs)
# Output: [1] "data.frame"


# Question 10. Write code that returns the column/variable
# names of the "wine_revs" object:

names(wine_revs)
# [1] "X"                     "country"               "description"           "designation"           "points"               
# [6] "price"                 "province"              "region_1"              "region_2"              "taster_name"          
# [11] "taster_twitter_handle" "title"                 "variety"               "winery"   

# Question 11. Write code to load all observations from the
# "price" column/variable of the "wine_revs" object into
# a vector called "wine_prices":

wine_prices <- wine_revs$price

# Question 12. Subset the "wine_revs" object to create a new 
# data.frame named "wine_revs_truncated" that contains all 
# observations for only the numeric ID, Points, Price, Variety, 
# and Winery columns/variables in "wine_revs": 

wine_revs_truncated <- wine_revs[, c("X", "points", "price", "variety", "winery")]


# Question 13. Save the "wine_revs_truncated" that you created 
# in Question 12 to your local "ist008_assignments" directory 
# as an RDS file named "wine_revs_truncated.rds":

saveRDS(wine_revs_truncated, "/Users/joshualai/sts115_jlai/wine_revs_truncated.rds")



# Question 14. Below is an R function that receives a single 
# argument (an integer) and returns the square root of that
# argument.  Write code (below the function) that calls the 
# function sending it the value 144 as its argument and assigns
# the returned result to a variable "z".  Note:  Be sure to run
# code of the function to load it into your environment before
# you try to call it in your answer or you won't be able to test
# your answer.

getSqrt <- function(argument_1) {
  retval <- sqrt(argument_1) 
  return(retval)
}

z <- getSqrt(144)


# Question 15. Write code that you would use to install the "fortunes"
# package onto your local machine and then load it into the working
# R environment:

install.packages("fortunes")
library("fortunes")

# Question 16. Why doesn't R automatically load every installed package when 
# it starts: [Text Answer]

# R does not automatically load every installed package when it starts because it would take too much time and memory and would make the operating system less efficient.



# Question 17. What is the git command to put a directory in your
# file system under git control (create a repository):

# git init


# Question 18. List one advantage and one disadvantage for each of the
# following data file formats: [Text Answer]
#   
#     a. RDS files
# One advantage of RDS files is that it is good for storing data that is intended to be loaded into R. Data saved in these files can be quickly loaded into and out of R.
# One disadvantage of RDS files is that it assumes that the reader understands how to use R. When exporting and sharing results, storing data in a CSV file is likely the better option.
#     b. CSV files
# One advantage of CSV files is that it is very human readable, so it is easier for people to scan and understand the data.
# One disadvantage of CSV files is that they take up significantly more disk space than RDS files do, making them slower to read.




# Question 19. Describe the Standard Deviation of a data set in
# your own words: [Text Answer]

# The Standard Deviation of a data set is average distance from a data point to the mean. It is a measure of how far each data point is from the mean compared to every other individual data.


# Question 20. Discuss what statisticians mean when they talk about
# finding the "center" of a data set: [Text Answer]

# When statisticians mean when they talk about finding the "center" of a data set, they can mean either the mean, median, or mode. The mean is the average value of every numeric data, the median is the data in the middle when sorted numerically, and the mode is the data that appears most frequently. The mean and median are only used in numeric data and the mode can be used in any type of data. However, it ultimately depends on the context of the data to decide what the "center" of the data set is.  


# To submit your midterm, save this file to your local 
# "ist008_assignments" directory then stage and commit 
# this file and any other files you created as part of 
# the exam to your local repository.  Then push your
# changes to Github.
