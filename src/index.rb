require 'tty-prompt'
require_relative './methods/methods.rb'

loading_screen("Welcome to Medikait a T1A3 Terminal app..")

class Medication
    def initialize(name,use,schedule)
      @name = name
      @use = use
      @schedule = schedule
    end
  
    def get_name
      @name
    end
  
    def get_use
      @use
    end
    def get_schedule
      @schedule
    end
  
    def print_medication
      puts @name + "                  " + @use + "                " +@schedule
    end
end

def save_data(curr_data)
    open('medication-store.txt', 'a') { |f|
      curr_data.each do |item|
        f.puts(item.get_name + "," + item.get_use + ","+item.get_schedule)
      end
    }
  end

  def read_medication
    if File.exist?("medication-store.txt")
      read_data = []
      File.open("medication-store.txt").each do |line|
        data = line.split(',')
        read_data.append(Medication.new(data[0],data[1],data[2]))
      end
    else
      puts "No file named medication-info.txt found in current directory"
    end
    read_data
  end

  def medication_menu(curr_data, prompt)
    read_data = read_medication
    while true
      menu_choices = ["Enter new Medication info", "Display Medication List", "Back to Main Menu", "Exit Application"]
      menu_choice = prompt.select("Please Select: ",menu_choices)
      choice = menu_choices.find_index(menu_choice)+1
      if choice == 1
        get_new_medication(curr_data)
      elsif choice == 2
        display_medication(read_data,curr_data)
      else
        break
      end
    end
    choice
  end