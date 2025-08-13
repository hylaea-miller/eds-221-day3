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

