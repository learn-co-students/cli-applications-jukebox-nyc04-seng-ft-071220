# Add your code here
<<<<<<< HEAD
# Add your code here
=======
>>>>>>> bb0f6121238e4867173c0193ea256af59e7e5bec
require 'pry'


def say_hello(name)
  "Hi #{name}!"
end


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def list(songs)
  songs.each_with_index do |song, num|
    puts "#{num +1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input= gets.strip
  if input.to_i.between?(1, songs.length)
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  while true do
    puts "Please enter a command:"
    input = gets.strip
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end
