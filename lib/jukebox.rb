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
    puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(songs)
  puts songs
  puts "1. Phoenix - 1901
2. Tokyo Police Club - Wait Up
3. Sufjan Stevens - Too Much
4. The Naked and the Famous - Young Blood
5. (Far From) Home - Tiga
6. The Cults - Abducted
7. Phoenix - Consolation Prizes
8. Harry Chapin - Cats in the Cradle
9. Amos Lee - Keep It Loose, Keep It Tight"

  songs.each_with_index do |el, i|
      puts "#{i+1}. #{el}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  playing_song = gets.chomp
  if (1..9).to_a.include?(playing_song.to_i)
    puts "Playing #{songs[playing_song.to_i - 1]}"
    system 'open <path to audio file>'
  else if (songs.include?(playing_song))
    puts "Playing #{playing_song}"
    system 'open <path to audio file>'
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  input = ''
  
  until input == 'exit'
  help
  puts "Please enter a command:"
  input == gets.chomp
    if input == 'list'
      list(songs)
    else if input == 'play'
      play(songs)
    else if input == 'exit' 
      exit_jukebox
      break
    else if input == 'help'
      help
    end
  end
  if input == 'exit' 
      exit_jukebox
  end
end
