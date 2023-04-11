#Question 1
#Create a function to convert a temperature from fahrenheit to celcius.

fahrenheit_to_celsius <- function(temp_F) {
  #WRITE YOUR CODE HERE
  temp_C = (temp_F-32)*5/9
  return(temp_C)
}

fahrenheit_to_celsius(32) == 0
fahrenheit_to_celsius(86) == 30

#Question 2
#find a temperature where it is (numerically) double in fahrenheit compared to its celcius scale. (limitation of scale from 1 to 400 F)
#The answer is 320 (320 F = 160 C)
#Create a function with loop and incorporate your function from Q1

fahrenheit_double_celcius <- function(){
  for(i in 1:400){
    #WRITE YOUR CODE HERE
    #hint: use the function from Question 1
    if (fahrenheit_to_celsius(i)*2 == i){
      return(i)
    }
    
    
  }
}

fahrenheit_double_celcius() == 320

#Question 3
#Make a function to check if a year is leap year.

check_leap_year <- function(year){
  #WRITE YOUR CODE HERE
  
  if (year %% 4 == 0){
    isleap = TRUE
  } else {
    isleap = FALSE
  }
  
  return(isleap)
}

check_leap_year(1990) == FALSE
check_leap_year(1988) == TRUE
check_leap_year(2000) == TRUE

#Question 4
#Create a function to wrap a text with a given wrapper.

text_wrapper <- function(text, wrapper){
  #WRITE YOUR CODE HERE
  
  result = paste(wrapper, text, wrapper, sep = '')
  #OR
  #result = paste0(wrapper, text, wrapper)
  
  return(result)
}

text_wrapper('I love asterisks','****') == '****I love asterisks****'
text_wrapper('Start and close with percent','%') == '%Start and close with percent%'

#Question 5
#Make a function to count the occurance of a number in a sentence

count_numbers <- function(sentence){
  #WRITE YOUR CODE HERE
  #hint: use as.numeric function from R. Split strings and iterate.
  result = 0
  split_sentence = strsplit(sentence, ' ')[[1]]
  for(word in split_sentence){
    if(is.na(as.numeric(word)) == FALSE) {
      result = result+1
    }
  }
  
  return(result)
}

count_numbers('We need to add 1 teaspoon of sugar and 200 ml of water') == 2
count_numbers('Arsenal scored 3 goals in Anfield, 2 from Auba and 1 from Laca') == 3

#Question 6
#We need at least 8 hours of sleep per day, but not more than 10 hours.
#Make a function to check if a number of hour is within normal sleeping time range.

enough_sleep <- function(hours){
  #WRITE YOUR CODE HERE

  #condition 1
  if (hours>10){
    ten = FALSE
  } else {
    ten = TRUE
  }
  
  #condition 2
  if (hours<8){
    eight = FALSE
  } else {
    eight = TRUE
  }
  
  #combining the 2 conditions
  result = eight & ten
  
  # shorter with "&" operator  
  # if((hours >= 8) & (hours <= 10)){
  #   result = TRUE
  # } else {
  #   result = FALSE
  # }
  
  #Other answer, with OR ("|") operator
  # if ((hours>10) | (hours<8)){result=FALSE} else {(result=TRUE)}
  
  return(result)
}

enough_sleep(11) == FALSE
enough_sleep(8) == TRUE
enough_sleep(8.5) == TRUE
enough_sleep(6) == FALSE

#Question 7
#Make a function to check whether a word is inside a sentence. Remember that it is case sensitive.

check_word <- function(word, sentence){
  #WRITE YOUR CODE HERE
  #hint: check grep function
  
  result = (grep(word, sentence) == 1)
  
  return(result)
}

check_word('Martinelli', 'Martinelli is the best player in the world') == TRUE
check_word('WHO', 'Who let the dogs out?') == FALSE

#Question 8
#Make a function to check whether a number is a prime number or not.

own_is_prime <- function(number){
  #WRITE YOUR CODE HERE
  #don't use any built-in functions to check for prime numbers
  
  #Prime: A prime number (or a prime) is a natural number greater than 1 that is not a product of two smaller natural numbers
  
  if (number > 1) {
    if (number %in% c(2, 3, 5, 7)){
      result = TRUE
    } else {
      if((number %% 2 == 0) | (number %% 3 == 0) | (number %% 5 == 0) | (number %% 7 == 0)){
        result = FALSE
      } else {
        result = TRUE
      }
    }
  } else {
    result = FALSE
  }


  return(result)
}


own_is_prime(7) == TRUE
own_is_prime(9719) == TRUE
own_is_prime(8370) == FALSE

#Question 9
#Make a function to count the prime numbers within a given range
#Hint: Use the function from Question 8

how_many_prime_between <- function(start,end){
  #WRITE YOUR CODE HERE
  #hint: use function from previous question to check prime numbers. construct a vector called "results" with all the prime numbers in the range.
  #hint: find a way to append new members to vector
  #hint: loop
  
  # result=c()
  # for(i in start:end){
  #   if(own_is_prime(i)){
  #     result=append(result,i)
  #   }
  # }
  # 
  # #Observe: the output of the function is the length of vector "results".
  # return(length(result))
  
  result = 0
  for(i in start:end){
    if(own_is_prime(i)){
      result=result+1
    }
  }
  #Observe: the output of the function is the variable "results".
  return(result)
}

how_many_prime_between(1,10) == 4
how_many_prime_between(20,100) == 17
how_many_prime_between(1000,4000) == 685

#Question 10
#Make functions to print the sum of prime numbers between 2 numbers. Test it with any range that you want.

sum_prime <- function(start,end){
  #WRITE YOUR CODE HERE
  
  result = 0
  for(i in start:end){
    if(own_is_prime(i)){
      result=result+i
    }
  }
  
  
  return(result)
}
sum_prime(1,10)

