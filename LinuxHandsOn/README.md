# Linux Hands-on Answer
 
### Exercise 1

I think you guys did well here, all of you. So I'm not putting any answer here.

## Exercise 2

Here's the one solution to exercise 2. I've seen different solutions from some of you and they worked too!

```shell

-sh-4.2$ nano shell.sh  
                                                   
-sh-4.2$ ls
shell.sh

-sh-4.2$ cat shell.sh                                                      
#Defining Variables (avoid spaces)
var1=file1
var2=folder1


#Creating Directory and File inside the directory
mkdir $var2
touch $var2/$var1


#Adding text into the file
echo "I live in Rockville" > $var2/$var1
echo "The weather is warm this week" >> $var2/$var1
echo "I like spring" >> $var2/$var1
echo "I love good espresso" >> $var2/$var1
echo "Especially in colder weather" >> $var2/$var1


#Printing the file content
echo "#content of the file"
cat $var2/$var1
echo "------------------------"                                                           

#count number of lines
echo "#number of lines in the file"
wc $var2/$var1 
echo "------------------------"                                                           

#find the occurence of word "weather" inthe file  
echo "#How many times the word 'weather' appears in the file?"                         
grep -o -i weather $var2/$var1 | wc -l   
echo "------------------------"                                                           
           
-sh-4.2$ sh shell.sh         
#content of the file                                              
I live in Rockville                                                        
The weather is warm this week                                              
I like spring                                                              
I love good espresso                                                       
Especially in colder weather  
------------------------
#number of lines in the file                                             
  5  21 114 folder1/file1      
------------------------
#How many times the word 'weather' appears in the file?    
2   
------------------------        
                                                               
-sh-4.2$ ls                                                                
folder1  shell.sh

-sh-4.2$ ls folder1/                                                       
file1              
                                                        
-sh-4.2$ cat folder1/file1                                                 
I live in Rockville                                                        
The weather is warm this week                                              
I like spring                                                              
I love good espresso                                                       
Especially in colder weather                                               
```