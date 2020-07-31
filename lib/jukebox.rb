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
    puts " - help : displays this help message"
    puts " - list : displays a list of songs you can play"
    puts " - play : lets you choose a song to play" 
    puts " - exit : exits this program "
end 

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.chomp.strip
    songNumber = input.to_i + 1
    songByName = songs.find do |track|
        track == input
    end 
    # binding.pry
    if songNumber <= songs.count
        puts "Playing #{songs[songNumber]}"
        # binding.pry
    elsif songs.include? input
        puts "Playing #{songByName}"
    else 
        puts "Invalid input, please try again" 
    end
end 

def list(songs)
    songs.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end 
    # binding.pry
end 

def exit_jukebox
end 

def run 
end 