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