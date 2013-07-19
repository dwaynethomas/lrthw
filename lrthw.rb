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
=end

#Exercise 16

filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "?"
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)


puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close()


