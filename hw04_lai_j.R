# Directions:

# This file contains homework questions for the lecture on working with files
# and data exploration. Questions appear as comments in the file. 

# Please see the Grading Criteria Canvas Page for specific guidance on what
# we expect from you regarding assignment responses.

# Once you have completed the assignment, follow the Submission Instructions 
# on Canvas Pages section to add, commit, and push this to your GitHub repository. 

# Some questions have multiple parts - make sure to read carefully and
# answer all of them. The majority of points lost in homework come from
# careless skipping over question parts.  

###############################################################################

# 1. Write out the file extension and explain what it means for the following
#    files: [comprehension]
#
#       a. `myscript.py`
#
#			.py means that the file is a Python script. This mean that the contents in this file are written in the Python programming language
#
#
#       b. `/home/arthur/images/selfie.jpg`
#
#			.jpg means that the file is an image file that is in the Joint Photographic Expert Group format. This means that the contents in this file are composed of image data.
#
#       c. `~/Documents/data.csv`
#
#			.csv means that the file is a Comma-Separated Values file where every line is a row of data which are separated by columns that represent different fields.
#


# 2. Which command line utility can be used to determine the type of a file? 
# [code completion]
#
#	The 'file' command line utility can be used to determine the type of file. For example, $ file my_data.csv outputs my_data.csv: CSV text
# 


# 3. Why is it a bad idea to explicitly call the `setwd` function within an R
#    script? [comprehension]
#
#	It may be a bad idea to explicity call the 'setwd' function within an R script because when opening an R file on different computers or environments, it may not always be run in the same directory. This could cause problems where the working directory cannot run the file.

# 4. List one advantage and one disadvantage for each of these formats:
# [comprehension]
#   
#     a. RDS files
#
#		One advantage of RDS files is that they since it is a binary file, it has a smaller file size which means that it is easier to store. One disadvantage is that RDS files can only be written in the R language, so people who do not know R may need to adapt. 
#
#     b. CSV files
#
#		One advantage of CSV files is that they are very accessible and readable because they are written in a text editor format. One disadvantage is that it is very limited in what kind of data can be stored, as it can only store tabular data.

# 5. Why doesn't R automatically load every installed package when it starts?
# [comprehension]
#
#	R does not automatically load every installed package when it starts because loading every installed package may take up more storage and memory than needed since every user may not need to use every single package. This can increase the startup time which makes it inconvenient for most.

# 6. Load the dogs data from the `dogs.rds` file provided in lecture.
#
#     a. How many missing values are in the `height` column? 
#       [code completion + comprehension]
#
#		13 values are missing in the 'height' column.
#
#     b. Think of a strategy to check the number of missing values in every
#        column using no more than 3 lines of code. Hint: think about last
#        week's lecture. Explain your strategy in words. 
#       [code completion + comprehension]
#
#		My strategy would be to use is.NA to check the entire dogs.rds file and see which columns are applicable to is.NA and then see which category has the most number of missing values.
#
#     c. Which column has the most missing values? Try to solve this by
#        implementing your strategy from part b. If that doesn't work, you can
#        use the `summary` function to get the number of missing values in each
#        column as well as a lot of other information (we'll discuss this
#        function more next week).
#       [code completion + comprehension]
#
#		'weight' has the most missing values at 86.


# 7. Use indexing to get the subset of the dogs data which only contains large
#    dogs that are good with kids (the category `high` in the `kids` column
#    means good with kids). [code completion + comprehension]
#
#	Using 'large_high = dogs[dogs$size == "large" & dogs$kids == "high", ]', I can see the subset of the dogs data which only contains large dogs that are good with kids.

# 8. With the dogs data:
#
#     a. Write the condition to test which dogs need daily grooming (the result
#        should be a logical vector). Does it contain missing values? 
#       [code completion + comprehension]
#
#		Yes, the logical vector does contain some missing values for some rows.
#
#     b. Use the condition from part a to get the subset of all rows containing
#        dogs that need daily grooming. How many rows are there?
#       [code completion + comprehension]
#
#		There are 83 rows.
#
#     c. Use the `table` function to compute the number of dogs in each
#        grooming category. You should see a different count than in part b for
#        daily grooming. What do you think is the reason for this difference?
#       [code completion + interpretation]
#
#		The reason for this difference is because when I computed the subset for dogs that need daily grooming, NA values were included. When I used table, NA values were omitted. Thus, there is a difference between the two ways to count it.
#
#     d. Enclose the condition from part a in a call to the `which` function,
#        and then use it to get the subset of all rows containing dogs that
#        need daily grooming. Now how many rows are there? Does the number of
#        rows agree with the count in part c?
#       [code completion + comprehension]
#
#		There are 23 rows. The number of rows does agree with the count of 23 in part c.


# 9. Compute a table that shows the number of dogs in each grooming category
#    versus size. Does it seem like size is related to how often dogs need to
#    be groomed? Explain your reasoning. [code completion + interpretation]
#
#	It does not necessarily seem like size is directly related to how often dogs need to be groomed. Based on the data, a similar ratio of large, medium, and small dogs all are more likely to be groomed weekly. A ratio of 30/36 large dogs, 29/38 medium dogs, and 29/38 small dogs need to be groomed weekly. Similarly, a smaller number of large, small, and medium dogs are groomed daily, and only one dog in the entire dataset is groomed monthly. Thus, there is no direct relationship between size and groom frequency.
	
# 10. Compute the number of dogs in the `terrier` group in two different ways:
#
#     a. By making a table from the `group` column. 
#       [code completion + comprehension]
#
#		table_dogs <- table(dogs$group)#
#
#     b. By getting a subset of only terriers and counting the rows.
#       [code completion + comprehension]
#		
#		terrier_subset <- dogs[dogs$group == "terrier", ]#		num_terriers <- nrow(terrier_subset)
#
#     c. Computing the table is simpler (in terms of code) and provides more
#        information. In spite of that, when would indexing (approach b) be more
#        useful? [comprehension + interpretation]
#
#		Indexing would be more useful when you want to find more information about a certain subset. This would allow you to learn and inquire more about the specific subset instead of going back to the entire dataset. Additionally, indexing would be more useful when there is a large amount of categories or groups and finding the group that you want may not be as easy to find. In this example, there are not many groups of dogs so finding terriers may be easy. However, in larger data sets, it may be more applicable to look for a certain subset.

