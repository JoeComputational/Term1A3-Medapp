require 'tty-prompt'

#This here is the lines that surround the header as it comes in.
HEADER_LINE = "--------------------------------------------------------------"
HEADER_LENGTH = HEADER_LINE.length

# clears the screen
def clear
    puts "\e[2J\e[f"
end
def loading_screen(string)
    string.length.times do |i|
        clear
        puts HEADER_LINE
        puts "Please Wait...".upcase.center(HEADER_LENGTH)
        puts HEADER_LINE
        puts
        puts string[0, i].center(HEADER_LENGTH)
        sleep(0.2)
    end
end

#This is for the loading screen once/if the animation is bugged - will be stagnant iteration
def loading_screen_without_animation(string)
    string.length.times do |i| 
    clear
    puts HEADER_LINE
    puts "Please Wait...".upcase.center(HEADER_LENGTH)
    puts HEADER_LINE
    puts
    puts string[0, i].center(HEADER_LENGTH)
    end
end