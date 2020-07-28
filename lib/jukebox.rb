# Add your code here
require 'pry'

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

def help 
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs_array)
    puts "Please enter a song name or number:"
    user_input = gets.strip

    if user_input.to_i >= 1 && user_input.to_i <= songs_array.length
        puts "Playing #{songs_array[user_input.to_i-1]}"
    elsif songs_array.include? user_input
        puts "Playing #{songs_array.find{|song| song == user_input}}"
    else
        puts "Invalid input, please try again"
    end


    # binding.pry
end


def list(songs_array)
    songs_array.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    loop do
        puts "Please enter a command:"
        command = gets.chomp
        case command
        when "exit"
            exit_jukebox
            break
        when "play"
            play(songs)
        when "help"
            help
        when "list"
            list(songs)
        else
            puts "Type help for more info"
        end
    end
end

