require 'pry'



def menu
  puts 'Welcome to the Word Splitter!'
  puts '1)Find the middle letter in a word'
  puts '2)exit'
  choice = gets.to_i
  menu_options(choice)
end

def menu_options(choice)
  case choice
  when 1
    word_splitter
  when 2
    puts 'You are exiting the word splitter'
    exit
  else
    puts 'Enter a valid input'
    menu
  end
end

def myincrediblebrain(s)
  if s.length.even?
     return s[s.length/2-1] + s[s.length/2]
  else
     return s[s.length/2]
  end
end

def word_splitter
  puts "Enter a word to split"
  first_word = gets.chomp
  puts myincrediblebrain(first_word)
  puts 'type QUIT to exit or 1 to keep going'
  choice = gets.chomp.to_i
  case choice
    when 1
      word_splitter
    when 'QUIT'
      exit
    else
      puts 'Enter a valid input'
      menu
  end
end


menu
