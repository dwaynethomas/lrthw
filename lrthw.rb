=begin tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat 


#####Exercise 11
print "How old are you?"
age = gets.chomp
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."


#Exercise 12

require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
     f.each_line {|line| p line}
     puts f.base_uri # <URI::http:0x40e6ef2 URL:http://www.ruby-lang.org/en/> #
     puts f.content_type # "text/html"
     puts f.charset # "iso-8859-1
     puts f.content_encoding # []
     puts f.last_modified # Thu Dec  05  02:245:02 UTC 2002
end


#Exercise 13

first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"


age = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{age}"






city, state, zipcode, country, phone = ARGV


puts "The script is called: #{$0}"
puts "Your first variable is: #{city}"
puts "Your second variable is: #{state}"
puts "Your third variable is: #{zipcode}"
puts "Your fourth variable is: #{country}"

puts "What's your phone number?"
phone = STDIN.gets.chomp

puts "Your fifth variable is: #{phone}"
 

#Exercise 14

user = ARGV.first
prompt = '>'

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print "Input text: "
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print "Input text: "
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print "Input text: "
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, #{user}, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer}. Nice.
MESSAGE

#Exercise 15
#accepts the filename with the scriptname
filename = ARGV.first

prompt = "> "
txt = File.open(filename)

 #Repeats the file information to the user and displays the content of the file
puts "Here's your file: #{filename}"
puts txt.read()

puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()


#Exercise 16
#the filename is an argument when this script is first run.
filename = ARGV.first
script = $0

 #human-readable warnings and escape directions are given to the customer.
puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

 #prompt to customer to decide what they will do with the file
print "?"
STDIN.gets

 #Explains the first step of opening the file. Opens the file by giving File.open arguments. Once the file is opened in the writing state, it is assigned to the variable target.#
 
puts "Opening the file..."
target = File.open(filename, 'w')

 #Explains that the file is being erased. The file opened in its writing state is measured first then erased.#
puts "Truncating the file. Goodbye!"
target.truncate(target.size)

#Takes three lines from the customer.#  
 
puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."
 
 #Writes them to file opened in its writing state#
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close()




#Exercise 17: More files

from_file, to_file=ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

#We could do these two on one line too, how?
input = File.open(from_file)
indata = input.read()


puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to_file}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."

STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

output.close()
input.close()


#Exercise 18: Names, Variables, Code, Functions

#this one is like your scripts with argv
def puts_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can just do this
def puts_two_again(arg1, arg2)
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

#this just takes one argument
def puts_one(arg1)
    puts "arg1: #{arg1}"
end

# this one takes no arguments
def puts_none()
    puts "I got nothin'."
end

puts_two("Zed", "Shaw")
puts_two_again("Zed", "Shaw")
puts_one("First!")
puts_none()



#Exercise 19: Functions And Variables
def cheese_and_crackers(cheese_count, boxes_of_crackers)
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for a party!"
    puts "Get a blanket."
    puts # a blank line
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
=end

 
 #Exercise 20: Functions And Files
input_file = ARGV[0]

#methods define actions to follow#
#Method prints all the contents of the file using the read method.#
def print_all(f)
    puts f.read()
end
#Method returns the file to its beginning with ths seek method."#
def rewind(f)
    f.seek(0, IO::SEEK_SET)
end

#Method prints the specified amounts of lines using the readline method."
def print_a_line(line_count, f)
    puts "#{line_count} #{f.readline()}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts "\n" # a blank line

print_all(current_file)

puts "\n" # a blank line
puts "Now let's rewind, kind of like a tape."


rewind(current_file)

puts "Let's print three lines:"
puts "\n" # a blank line

#This code prints each increment of lines in the file."
current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)


=begin
 
 Exercise 21: Functions Can Return Something
 Exercise 22: What Do You Know So Far?
 Exercise 23: Read Some Code
 Exercise 24: More Practice
 Exercise 25: Even More Practice
 Exercise 26: Congratulations, Take A Test!
 Exercise 27: Memorizing Logic
 Exercise 28: Boolean Practice
 Exercise 29: What If
 Exercise 30: Else And If
 Exercise 31: Making Decisions
 Exercise 32: Loops And Arrays
 Exercise 33: While Loops
 Exercise 34: Accessing Elements Of Arrays
 Exercise 35: Branches and Functions
 Exercise 36: Designing and Debugging
 Exercise 37: Symbol Review
 Exercise 38: Doing Things To Lists
 Exercise 39: Hashes, Oh Lovely Hashes
 Exercise 40: Modules, Classes, And Objects
 Exercise 41: Learning To Speak Object Oriented
 Exercise 42: Is-A, Has-A, Objects, and Classes
 Exercise 43: Gothons From Planet Percal #25
 Exercise 44: Inheritance Vs. Composition
 Exercise 45: You Make A Game
 Exercise 46: A Project Skeleton
 Exercise 47: Automated Testing
 Exercise 48: Advanced User Input
 Exercise 49: Making Sentences
 Exercise 50: Your First Website
 Exercise 51: Getting Input From A Browser
 Exercise 52: The Start Of Your Web Game
=end
