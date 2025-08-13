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