
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
        if ARGV.length > 0
          puts "Welcome to MediKait #{ARGV}".center(HEADER_LENGTH).colorize(:blue)
        else
          puts "Welcome to the App user!".center(HEADER_LENGTH).colorize(:blue)
        end
        
        puts string[0, i].center(HEADER_LENGTH)
        end
    end

    def main_loop
      prompt = TTY::Prompt.new
      curr_data = Array.new
      read_data = Array.new
      while true
        puts ""
        menu_choices = ['Medication Lists and Information', 'Supplements and Minerals', 'Medication Route Definitions', 'Volume Unit Conversion', 'Mass Unit Conversion', 'BMI Calculater', 'Exit']
        menu_choice = prompt.select('Please Select From the Following Options: ', menu_choices)
        choice = menu_choices.find_index(menu_choice) + 1
        if choice == 1
          value = medication_menu(curr_data, prompt, read_data)
          break if value == 5 || value == 3
        elsif choice == 2
          value = vitamin_use(prompt)
          break if value == 2
        elsif choice == 3
          value = display_definitions(prompt)
          break if value == 2
        elsif choice == 4
          value = volume_conversion(prompt)
          break if value == 8
        elsif choice == 5
          value = mass_conversion(prompt)
          break if value == 8
        elsif choice == 6
          value = bmi_calculator(prompt)
          break if value == 3
        else
          break
        end
      end
      save_data(read_data, curr_data)
    end
