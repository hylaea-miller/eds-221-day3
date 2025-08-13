# basic if statement

rm(list = ls())

burrito <- 1.5 # assigning an object value


#write a short if statement
if (burrito > 2) {
  print("I love burritos!")
}

# An example with strings
my_ships <- c("Millenium Falcon", "X-wing", "Tie-Fighter", "Death Star")
stringr::str_detect(my_ships, pattern = "r")

phrase <-  "I love burritos!"

  if (stringr::str_detect(phrase, "love")) {
    print("Big burrito fan")
  }
    
# basic if-else statments

pika <- 59.1 #storing a value to an object
if (pika > 60) {# define size od mega pikas
  print("mega pika")
  } else { #otherwise, print normal
  print("normal pika")}

# Another example with strings

food <-  "I love tacos!"

if (stringr::str_detect(food, pattern = "burritos"))  {
  print("yay burritos!")
} else { 
    print ("what abaout burritos?")}

# more options with if-else statements

marmot <- 3.8

if (marmot < 0.5) {
  print("small")
} else if (marmot >= 0.5 & marmot < 3) {
  print("medium")
} else {
  print("large")
}

# use the switvh function to write complicated if else statements

# all of this code is the same as several if ele statements

species <- "mouse"

switch(species,
       "cat" = print("meow"),
       "dog" = print("woof"),
       "mouse" = print("squeak"))

# see next week dplyr::case_when()
# Writing for loops

dog_names <- c("Teddy", "khora", "Banjo", "Waffle")

#create ex. for the one data element to put into for loop

print("my dog's name is Teddy")
paste("my dog's name is", dog_names[1])

print(paste("my dog's name is", dog_names[1]))
print(paste("my dog's name is", dog_names[2]))
print(paste("my dog's name is", dog_names[3]))

# version with a variable that I can update

pupster <- 1

print(paste("my dog's name is", dog_names[pupster]))

# convert to a for loop

for (pupster in dog_names) {
  print(paste("my dog's name is", pupster))
}

# Another for loop example

# data that I'm working with
mass <- seq(from = 0, to = 3, by = 0.5)

i <- mass[1]
new_val <- i + 2
print(new_val)

# write into a for loop
for (i in mass) {
  new_val <- mass[i] + 2 
  print(new_val)}

#same thing
for (i in seq_along(mass)) {
  new_val <- mass[i] + 2
  print(new_val)}

# another example with iterating by position ( indexing)

tree_height <- c(1, 2, 6, 10)

# example for the fist case
tree_height[1] + tree_height[2]

# convert into a generalizable expression

i <- 2
val <- tree_height[i] + tree_height[i + 1]
print(val)


#convert into a for loop

seq_along(tree_height)

for (i in seq_along(tree_height)) {
  val <- tree_height[i] + tree_height[i + 1]
  print(val)
}

# for loops with conditional statements

# Create a vector of animals
animal <- c("cat", "dog", "dog", "zebra", "dog")

one_animal <-  animal[2]

if (one_animal == "dog") {
  print("I love dogs!")
  } else {
    print("These are other animals")
  }

#with a variable that can be updated

animal <- c("cat", "dog", "dog", "zebra", "dog")



for (i in seq_along(animal)) {
  if (animal[i] == "dog") {
    print("I love dogs!")
  } else {
    print("These are other animals")
  }  
  
}


# Another for loop example with conditional statements

# animal species
species <-  c("dog", "elephant", "goat", "dog", "elephant") 
age_human <- c(3, 8, 4, 6, 12, 18)


# convert ages to "animal years" using the following
# 1 human year = 7 in dog years
# 1 human year = 0.88 in elephant years
# 1 human year = 4.7 in goat years

# Allocate space for our output

animal_ages <- vector(mode = "numeric", length = length(species))


for (i in seq_along(species)) {
  if (species[i] == "dog") {
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i] * 0.88
  } else if (species[i] =="goat") {
    animal_age <- age_human[i] * 4.7
  } 
  
  animal_ages[i] <- animal_age #Populate empty vector
  print(animal_ages)
}


# Another exp of storing on output

tigers <- c(29, 34, 82)
lions <- c(2, 18, 6)


big_cats <- vector(mode = "numeric", length = length(tigers))

for (i in seq_along(tigers)) {
  big_cats[i] <- tigers[i] + lions[i]
print(big_cats)  
}

# for loops to iterate across columns of data frame[

mean_val <- vector(mode = "numeric", length = ncol(mtcars))

for (i in 1:ncol(mtcars)) { 
  mean_val <- mean(mtcars[[i]], na.rm = TRUE)
  mean_mtcars[i] <- mean_val
  }

# A for loop over columns with a condition

library(palmerpenguins)

for (i in seq_along(penguins)) {
  if (is.numeric(penguins[[i]])) {
    penguin_med <- median(penguins[[i]], na.rm = TRUE)
    print(penguin_med)
  } else {
    print("non-numeric")
  }
}

  
# function programming

# apply function iterates over column or rows
# Rewrite our for loop finding mean values of the columns in mtcars

apply(X = mtcars, MARGIN = 2, FUN = mean)
apply(mtcars, 2, mean)

# same as saying apply the function mean across the columns in mtcars

library(tidyverse)

penguins %>% 
  group_by(species) %>% 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))
