require 'tty-prompt'
require_relative './methods/methods.rb'

loading_screen("T1A3 Coder Academy Assignment")

class Medication
  def initialize(name, use, schedule)
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

  def set_name(name)
    @name = name
  end

  def set_use(use)
    @use = use
  end

  def set_schedule(schedule)
    @schedule = schedule
  end

  def print_medication(count)
    puts
    puts count.to_s.ljust(8) + @name.ljust(20) +  @use.ljust(19) +  @schedule.ljust(29)
  end
end

def save_data(read_data, curr_data)
  open('medication-store.txt', 'w') do |f|
    read_data.each do |item|
      f.puts(item.get_name + ',' + item.get_use + ',' + item.get_schedule)
    end
    curr_data.each do |item|
      f.puts(item.get_name + ',' + item.get_use + ',' + item.get_schedule)
    end
  end
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

def get_info_value
  value = ""
  while true
    value =  gets.chomp.to_s
    if value == ""
      puts "Please enter valid value"
    else
      break
    end
  end
  value
end

def get_new_medication(curr_data)
  puts "Please Enter Medication Name: "
  name = get_info_value
  puts "Please Enter Medication Use: "
  use = get_info_value
  puts "Please Enter Medication Schedule: "
  schedule = get_info_value
  curr_data.append(Medication.new(name,use,schedule))
end

def display_medication(read_data, curr_data)
  puts "\t\t\t\tList of Medication"
  puts "Medication Name" + "          "+ "Medication Use" + "          " + "Medication Schedule"
  read_data.each do |item|
    item.print_medication
  end
  curr_data.each do |item|
    item.print_medication
  end
end

def get_value(message)
  value = 0
  while true
    puts message
    value = gets.chomp.to_f
    if value < 0
      puts "Please enter a valid value"
    else
      break
    end
  end
  value
end

def mass_conversion(prompt)
    mass_choices = ["KG to G", "G to mG", "mG to uG", "uG to mG", "mG to G",
                    "G to KG", "Back to Main Menu", "Exit Application"]
    while true
      mass_choice = prompt.select("Please Select: ",mass_choices)
      choice = mass_choices.find_index(mass_choice)+1
      if choice >=1 && choice <= 6
        value = get_value("Please enter value to convert: ")
        if choice == 1
          puts  value.to_s + " Kg = " + (value*1000).to_s + " G"
        elsif  choice == 2
          puts  value.to_s + " G = " + (value*1000).to_s + " mG"
        elsif  choice == 3
          puts  value.to_s + " mg = " + (value*1000).to_s + " uG"
        elsif  choice == 4
          puts  value.to_s + " uG = " + (value/1000).to_s + " mG"
        elsif  choice == 5
          puts  value.to_s + " mG = " + (value/1000).to_s + " G"
        elsif  choice == 6
          puts  value.to_s + " G = " + (value/1000).to_s + " KG"
        end
      else
        break
      end
    end
    choice
end

def volume_conversion(prompt)

    volume_choices = ["KL to L", "L to mL", "mL to uL", "uL to mL", "mL to L",
                    "L to KL", "Back to Main Menu", "Exit Application"]
    while true
      volume_choice = prompt.select("Please Select: ",volume_choices)
      choice = volume_choices.find_index(volume_choice)+1
      if choice >=1 && choice <= 6
        value = get_value("Please enter value to convert: ")
        if choice == 1
          puts  value.to_s + " KL = " + (value*1000).to_s + " L"
        elsif  choice == 2
          puts  value.to_s + " L = " + (value*1000).to_s + " mL"
        elsif  choice == 3
          puts  value.to_s + " mg = " + (value*1000).to_s + " uL"
        elsif  choice == 4
          puts  value.to_s + " uL = " + (value/1000).to_s + " mL"
        elsif  choice == 5
          puts  value.to_s + " mL = " + (value/1000).to_s + " L"
        elsif  choice == 6
          puts  value.to_s + " L = " + (value/1000).to_s + " KL"
        end
      else
        break
      end
    end
    choice
end

def main_loop

  prompt = TTY::Prompt.new
  curr_data = []
  while true
    menu_choices = ["Medication Info","Mass Unit Conversion","Volume Unit Conversion","Exit"]
    menu_choice = prompt.select("Please Select: ",menu_choices)
    choice = menu_choices.find_index(menu_choice)+1
    if choice == 1
      value = medication_menu(curr_data,prompt)
      if value == 4
        break
      end
    elsif choice == 2
      value = mass_conversion(prompt)
      if value == 8
        break
      end
    elsif  choice == 3
      value = volume_conversion(prompt)
      if value == 8
        break
      end
    else
      break
    end
  end
  save_data(curr_data)
end

main_loop