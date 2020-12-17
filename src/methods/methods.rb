require 'tty-prompt'
require 'tty-font'
require 'colorize'
require 'rspec'

#This here is the lines that surround the header as it comes in.
HEADER_LINE = "-------------------------------------------------------------------------------".colorize(:black).on_light_green.underline
HEADER_LENGTH = HEADER_LINE.length

# clears the screen
def clear
    puts "\e[2J\e[f"
end
def loading_screen(string)
    font = TTY::Font.new(:doom)
    string.length.times do |i| 
        clear
        puts HEADER_LINE
        puts font.write("              MediKait").colorize(:blue)
        puts HEADER_LINE
        puts
        puts string[0, i].center(HEADER_LENGTH)
        end
    end
