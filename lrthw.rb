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
 
=end
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

