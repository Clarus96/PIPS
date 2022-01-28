install.packages("devtools")
install.packages("roxygen2")
devtools::create("myfirstpackage")
#question 3.2.1
#first I tried my cat's birthday 
#remind_me() which takes no arguments and returns some things that are useful for you to remember (birthdays, deadlines etc.). Please NO sensitive data like passwords or contacts. You can also make this a shopping list. 
rm(list = ls())
options(error = function() traceback(3))
today <- Sys.Date()
today1 <- format(today, format ="%d-%m")
today1

remind_me <- function(Date){
  cats_birthday<- as.Date("26-01-2022")
  cats_birthday2 <- format(cats_birthday, format ="%d-%m")
  print(cats_birthday2)
    if (Date == cats_birthday2){
    print("cats birthday")
  } 
}
remind_me(today1)

Sys.Date()
#that's my first try and it does not work.
today <- Sys.Date()
today1 <- format(today, format ="%d-%m")
today1
remind_me2 <- function(Date){
  cats_birthday<- as.Date()
  if (Date == cats_birthday){
    print("cats birthday")
  } 
}
remind_me(today1)


#it gives me an Error.
#Error in charToDate(x) : character string is not in a standard unambiguous format


#I still don't really know how to proceed from here.
#I don't know how to define arguments, and where 

#Given the exercise number, your cheat() function tells the user the correct solution. The cheat function should work for at least 4 exercises.
cheat <- function(question){
  
}
Sys.which("make")

#shopping list reminder
bananas <- 5
apple <- 0
shopping_list <- function (fruit){
  if (fruit == 0){
    print("buy fruit")
  } else {
    fruit <- fruit - 1
  }
  return(fruit)
}
shopping_list(apple)
#shopping list without an argument (maybe better with a loop function??)
shopping_list2 <- function(){
  fruit <- 5
  if (fruit == 5){
    print("buy fruit")
  } else {
    fruit <- fruit - 1
  }
  return(fruit)
}
shopping_list2

#cheat function with an argument
Q_3_2_1 <- "Simulate some data and show them in a boxplot."
Q_3_2_3 <- "Can you recreate the barplot with the ggplot2 and titanic packages (dataset titanic_train has the passenger data)?"
Q_3_2_7 <- "Recreate this plot from the Orange dataset."
Q_3_2_16 <- "Look at this lengthy way to construct a matrix. Can you achieve the same with a single line of code shorter than the first line of the code below?"
cheat <- function(question){
  if(question == Q_3_2_1) {
    print(paste("question:", Q_3_2_1))
    print("my_simulated_data_2 <- rnorm(100) boxplot(my_simulated_data_2)")
  }
  if(question == Q_3_2_3){
    print(paste("question:", Q_3_2_3))
    print('library(ggplot2)
            library(tidyverse)
            library("titanic")
            ggplot(titanic_train, aes(Sex)) + geom_bar(aes(fill = factor(Survived))) + labs(fill = "How did it go?") + scale_fill_discrete(labels = c("dead", "alive"))')
  }
  if(question == Q_3_2_16){
    print(paste("question:", Q_3_2_16))
    print("matrix(1:9, 3,3,byrow=TRUE)*c(1:3)")
  }
  if(question == Q_3_2_7){
    print(paste("question:", Q_3_2_7))
    print("ggplot(Orange, aes(x = age, y = circumference)) + geom_smooth(method = lm)")
  }
  return("good luck!")
}

cheat(Q_3_2_3)
  
