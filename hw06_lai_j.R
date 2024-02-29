# Directions:

# This file contains homework questions for the lecture on data visualization.
# Questions appear as comments in the file. 

# Please see the Grading Criteria Canvas Page for specific guidance on what
# we expect from you regarding assignment responses.

# Once you have completed the assignment, follow the Submission Instructions 
# on Canvas Pages section to add, commit, and push this to your GitHub repository. 

# Some questions have multiple parts - make sure to read carefully and
# answer all of them. The majority of points lost in homework come from
# careless skipping over question parts.  

###############################################################################


# 1. All of the questions in this homework use the Best in Show data set. 
#      The data is the file `dogs.rds`.
#   a. Load the data set and use R functions to inspect the number of 
#      columns, number of rows, names of columns, and column data types.
#      [code completion + comprehension]

dogs <- readRDS('dogs.rds')
ncol(dogs)
# 18
nrow(dogs)
# 172
sapply(dogs, class)
#      breed             group           datadog    popularity_all        popularity     lifetime_cost intelligence_rank         longevity          ailments 
# "character"          "factor"         "numeric"         "integer"         "integer"         "numeric"         "integer"         "numeric"         "integer" 
# price         food_cost          grooming              kids     megarank_kids          megarank              size            weight            height 
# "numeric"         "numeric"          "factor"          "factor"         "integer"         "integer"          "factor"         "numeric"         "numeric" 

#   b. Make a scatter plot that shows the relationship between height and
#      weight. In 2-3 sentences, discuss any patterns you see in the plot.
#      [code completion + comprehension + interpretation]

ggplot(dogs) + 
  aes(x = height, y = weight) +
  geom_point()

# In general, there seems to be a trend that as taller the dog is, the more it weighs. Additionally, dogs that are nearer the tallest height tend to have a much higher weight than the general trendline follows.

#   c. Set the color of the points in the scatter plot from part b to a single 
#      color of your choosing. (Tip: Choose a color from one of the sites 
#      shared in the lesson (e.g. https://coolors.co/palettes/trending))
#      [code completion + comprehension]

ggplot(dogs) + 
  aes(x = height, y = weight, color = "red") +
  geom_point()

# 2.
#   a. Make a bar plot that shows the number of dogs in each "group" of dogs.
#      [code completion + comprehension]

ggplot(dogs, aes(x = group)) + geom_bar() 

#   b. Are any groups much larger or smaller than the others? Describe what your 
#       visualization shows.
#      [interpretation]

# Most of the groups seem to be around the same range of around of 25-28 dogs but the non-sporting and toy dogs are both under 20. 

#   c. Fill in the bars based on the size of the dog, and set the position 
#       argument of the bar geometry to the one you think best communicates the 
#       data. Explain why you chose this position.
#      [code completion + comprehension + interpretation]

ggplot(dogs, aes(x = group)) + geom_bar(aes(fill = size), position = "dodge") 

# I set the position argument to 'dodge' because I felt like it most accurately communicated the data. When looking at the data through this way, I can compare each group's large, medium, and small to each other. When the bar is filled by size on top of one another, it is hard to get an exact number of the count. You would have to subtract values in order to get the exact value, which requires extra work.  

# 3.
#   a. Which geometry function makes a histogram? Use the ggplot2 website or
#      cheat sheet to find out.
#      [code completion + comprehension]

# the 'geom_histogram()' function creates a histogram.

#   b. Make a histogram of longevity for the dogs data. How long do most dogs
#      typically live? Explain in 1-2 sentences.

ggplot(dogs, aes(x = longevity)) + geom_histogram()
# Most dogs typically live around 12.5 years. This is where the peak of the histogram lies. 

#      [code completion + comprehension + interpretation]
#   c. Inside the geometry function for histograms, play around with the bins
#      argument. (e.g. bins = 10, bins = 50). What do you think this is doing?
#      [code completion + comprehension]

ggplot(dogs, aes(x = longevity)) + geom_histogram(bins = 40)

# By modifying the bins, it affects the precision of the exact longevity of the dogs. For example, if I set the bins to equal 3, that means that there are 3 equal ranges of longevity where a dog can be placed into such as 3-8, 9-14, and 15-20. Therefore, setting bins to a higher number shows a more precise display of the count of dogs within a specific number range.

# 4.
#   a. Modify your plot from Question 1 so that the shape of the points is
#      determined by the "group" of the dog. [code completion + comprehension]

ggplot(dogs) + 
  aes(x = height, y = weight, color = "red", shape = group) +
  geom_point()

#   b. Do height and weight effectively separate the different groups of dogs?
#      In other words, are there clear boundaries between the groups in the
#      plot (as opposed to being mixed together)? Are some groups better
#      separated than others?
#      [interpretation]

# Looking at the different groups in the height-weight graph, I can see some that are separated. For example, most terriers tend to be lower in the graph while most hound dogs tend to be higher in the graph. There are not many dogs in a group that are all over the graph; they are all generally on one end. 


#   c. How might you improve the readability of this graph in order to visualize
#      this potential relationship more clearly?
#      [interpretation]

# One thing I would do is change the color of this graph according to the type of dog. Having every dog group in the same color is hard to tell how the groups differ from each other.

# 5. In a paragraph, answer the following questions for the “Best in Show” 
#    visualization (https://informationisbeautiful.net/visualizations/best-in-show-whats-the-top-data-dog/) 
#    that was built using the dogs dataset.
#    a. Who do you think is the intended audience for this data visualization? 
#        How do you think that could influence data collection, metrics calculations, 
#        and graphics choices?
#       [interpretation]

# I think the intended audience would be for potential pet owners looking for what kind of dog to own. Popularity being a measure shows how well-liked it may be for friends and family for potential owners. 
# This would show how attractive people would find your dog. Additionally, the data score is comprised of many factors that owners would find helpful, such as cost, longevity, grooming, and ailments. 
# Taking the data score into consideration, a dog owner would likely look for a dog that is further on the right of the scale and focus less on dogs that are on the left side of the scale. 
# Dog owners could also look at the intelligence level of the dog (dumb, clever), the size (small, med, large), and the type of dog (herding, hound, etc.) in order to further narrow their search if they already desire a certain type.
# All in all, the data visualization is designed for people to look for dogs in the right side of the graph, mainly a focus on the top right.

#    b. Who/what is included in this data visualization and who is left out? 
#        What do you think the impact of that decision could be on conclusions drawn
#        from viewers of the data visualization? 
#       [interpretation]

# Out of the 172 breeds of dogs, only 87 are given a datadog score. This means that over half of the dog breeds do not have scores and therefore are not on the data visualization.
# This could impact the data since it does not give a complete picture of dogs that owners may want. For example, if a potential owner already has a dog in mind such as an American Foxhound, they cannot see the score that it gets.
# Additionally, some dogs that are already in the data visualization are missing a weight or a height value. This could skew the data towards a certain dog size since it does not have the full data.

#    c. What could the potential impact of this visualization be on those 
#       who are left-out? [interpretation]

# Potential impacts of the visualization of ones that are left out could lead some to only consider certain breeds of dogs when choosing one, not granting them the full picture of the data.
# If every dog were given a datadog score, it could also skew the opinion of those towards the score-popularity chart. For example, if there are a good amount of dogs that are near the bulldog score, then owners may think that the bulldog is not the worst dog to own and there are many dogs around that range.
# The same thing could be said about a dog in the top right section. If every dog is given a score and there turns out to be as many dogs at or even better than the best shown in the chart, people may reconsider their choice of which dog to get.

# 6. Select your favorite data visualization from https://viz.wtf/ 
# (that was not featured during class or in the reader). 
#   a. Type the direct url to the viz you selected here:

# https://viz.wtf/image/633334089306537985

#   b. Describe in a few sentences the "data story" you think that this visualization 
#       is trying to tell.

# I think that the visualization is trying to perform what a pie or bar chart is presenting based on the amount of money spent on groceries per week.

#   c. In a paragraph, what makes this a "bad" visualization? Evaluate the visualization 
#       based on the visualization principles and perception rules discussed in class 
#       (i.e., Gestalt principles, plot type, accessibility, critical reading, etc.), 
#       and suggest a few changes to improve the graphic.

# The graphic is problematic because it is very confusing to understand. It attempts to convey data that adds up to 100% but the way the data visualization is presented is very unclear.
# Since the categories that make up the data are all bordering and wrapped around each other, it is hard to tell how much bigger or smaller one category is.

#   d. Describe in 1-2 sentences one thing that this visualization actually already does well.

# The data visualization does give the percentages on the side so that looking at the chart is not necessary.

# 7. Look at the plot posted with this assignment on Canvas.
#    a. Identify the marks and channels in this plot. Write them out for this answer
#    b. Write the code to generate this plot. (Hint: start with identifying the 
#        variables on each axis, then think about the types of channels).

ggplot(dogs, 
       aes(longevity, 
           lifetime_cost, 
           shape = group,
           color = group)) + 
         geom_point() +
         labs(x = "Longevity (year)", title = "Dogs")
)

#    c. Propose 4 improvements to the plot based on best practices.
# Since the x-axis has a label that shows what it represents, the y-axis should also have an appropriate label.
# We could change the title to something more representative of what the data is conveying. 
# There are not enough shapes to convey the different groups of data.
# Some gridlines could be eliminated.
# 
#    d. Modify the code to implement at least two of those changes.

ggplot(dogs, 
       aes(longevity, 
           lifetime_cost, 
           shape = group,
           color = group)) + 
  geom_point() +
  labs(x = "Longevity (year)", y = "Lifetime Cost ($)", title = "Longevity vs. Lifetime Cost of Dogs")
)
