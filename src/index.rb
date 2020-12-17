require 'tty-prompt'
require 'tty-font'
require 'colorize'
require 'bundler'
require 'rspec'
require_relative './methods/methods.rb'

loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))

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

def bmi_calculator(prompt)
  while true
    weight = get_value('Enter your weight in Kg: ')
    height = get_value('Enter your height in CM') / 100
    bmi = weight / (height * height)
    if bmi < 18.5
      puts "Your BMI score is " + (bmi.to_i).to_s + ' You are classified as under weight'.colorize(:blue)
    elsif bmi >= 18.5 && bmi < 25
      puts "Your BMI score is " + (bmi.to_i).to_s + ' Your weight is classified as within normal range'.colorize(:green)
    elsif bmi >= 25 && bmi < 30
      puts "Your BMI score is " + (bmi.to_i).to_s + ' You are classified as over weight'.colorize(:orange)
    else
      puts "Your BMI score is " + (bmi.to_i).to_s + ' You are classified as obese'.colorize(:red)
    end
    menu_choices = ['Calculate Another', 'Back to Main Menu', 'Exit Application']
    menu_choice = prompt.select('Please Select: ', menu_choices)
    choice = menu_choices.find_index(menu_choice) + 1
    if choice == 1
      next
    else
      break
    end
  end
  choice
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

def read_medication(read_data)
  if File.exist?('medication-store.txt')
    File.open('medication-store.txt').each do |line|
      data = line.split(',')
      read_data << Medication.new(data[0], data[1], data[2])
    end
  else
    puts 'No file named medication-info.txt found in current directory'
  end
  read_data
end

def vitamin_use(prompt)
  vitamins = ['Vitamin D- Helps your body absorb calcium', 'Vitamin C- Immune system Boost/growth', 'Vitamin B Complex- Increase Energy, Brain Function and Cell Metabolism', 'IVP– Intravenous Push',
                 'Iron- Increase Energy, Brain Function and Promotes Healthy Red Blood Cells', 'Zinc- Immune Support/Energy Absorbtion', 'Calcium- Promotes Strong Bones and Teeth', 
                 'Magnesium- Bone Health/Energy Production (also good for cramps)', 'Folate/Folic Acid- Aids Fetus Development, Fights Depression and combats Inflammation']
  puts 'List of Useful supplements'
  vitamins.each do |item|
    puts item
  end
  menu_choices = ['Back to Main Menu', 'Exit Application']
  menu_choice = prompt.select('Please Select: ', menu_choices)
  menu_choices.find_index(menu_choice) + 1
end

def display_definitions(prompt)
  definitions = ['IM– Intramuscular', 'IO– Intraosseous', 'IV– Intravenous', 'IVP– Intravenous Push',
                 'ID – Intradermal', 'IN – Intranasal', 'IP – Intraperitoneal', 'IT – Intrathecal', 'IVPB – Intravenous piggyback',
                 'p.o – By mouth', 'SC / SubQ – Subcutaneous', 'SL – Sublingual', 'top. – Topical', 'vag. – Vaginally']
  puts 'List of Definitions'
  definitions.each do |item|
    puts item
  end
  menu_choices = ['Back to Main Menu', 'Exit Application']
  menu_choice = prompt.select('Please Select: ', menu_choices)
  menu_choices.find_index(menu_choice) + 1
end

def do_update(medicines,index)
  puts 'Please Enter New Medication Name: '
  name = get_info_value
  puts 'Please Enter New Medication Use: '
  use = get_info_value
  puts 'Please Enter New Medication Schedule: '
  schedule = get_info_value
  medicines.delete_at(index)
  medicines.insert(index,Medication.new(name,use,schedule))
  puts 'Updated Successfully'
end

def update_medication(read_data, curr_data ,prompt)
  loop do
    display_medication(read_data, curr_data)
    while true
      value = get_value('Please Enter ID of Medicine to update: ').to_i
      if value > (read_data.length + curr_data.length)
        puts 'Please enter id value within range'
      else
        break
      end
    end
    if value <= read_data.length
      do_update(read_data,value-1)
    else
      do_update(curr_data,value-1)
    end
    menu_choices = ['Update Another Medication', 'Back to Main Menu', 'Exit Application']
    menu_choice = prompt.select('Please Select: ', menu_choices)
    choice = menu_choices.find_index(menu_choice) + 1
    if choice == 1
      next
    else
      break
    end
  end
end

def medication_menu(curr_data, prompt, read_data)
  if read_data.empty?
    read_medication(read_data)
  end
  while true
    menu_choices = ['Enter new Medication info', 'Display Medication List', 'Update Medication', 'Back to Main Menu', 'Exit Application']
    menu_choice = prompt.select('Please Select: ', menu_choices)
    choice = menu_choices.find_index(menu_choice) + 1
    if choice == 1
      get_new_medication(curr_data)
    elsif choice == 2
      if (read_data.nil? || read_data.empty?) && (curr_data.nil? || curr_data.empty?)
        puts 'Nothing to display'
      else
        display_medication(read_data, curr_data)
      end
    elsif choice == 3
      return update_medication(read_data, curr_data,prompt)
    else
      break
    end
  end
  choice
end

def get_info_value
  value = ''
  loop do
    value =  gets.chomp.to_s
    if value == ''
      puts 'Please enter valid value'
    else
      break
    end
  end
  value
end

def get_new_medication(curr_data)
  puts 'Please Enter Medication Name: '
  name = get_info_value
  puts 'Please Enter Medication Use: '
  use = get_info_value
  puts 'Please Enter Medication Schedule: '
  schedule = get_info_value
  curr_data << Medication.new(name, use, schedule)
end

def display_medication(read_data, curr_data)
  puts "\t\t\tList of Medication"
  counter = 1
  puts 'ID'.ljust(8) + 'Medication Name'.ljust(20) + 'Medication Use'.ljust(19) + 'Medication Schedule'.ljust(29)
  read_data.each do |item|
    item.print_medication(counter.to_s)
    counter += 1
  end
  curr_data.each do |item|
    item.print_medication(counter.to_s)
    counter += 1
  end
end

def get_value(message)
  value = 0
  loop do
    puts message
    value = gets.chomp.to_f
    if value <= 0
      puts 'Please enter a valid value'
    else
      break
    end
  end
  value
end

def mass_conversion(prompt)
  mass_choices = ['KG to G', 'G to mG', 'mG to uG', 'uG to mG', 'mG to G',
                  'G to KG', 'Back to Main Menu', 'Exit Application']
  while true
    mass_choice = prompt.select('Please Select: ', mass_choices)
    choice = mass_choices.find_index(mass_choice) + 1
    if choice >= 1 && choice <= 6
      value = get_value('Please enter value to convert: ')
      if choice == 1
        puts  value.to_s + ' Kg = ' + (value * 1000).to_s + ' G'.colorize(:blue)
      elsif  choice == 2
        puts  value.to_s + ' G = ' + (value * 1000).to_s + ' mG'.colorize(:blue)
      elsif  choice == 3
        puts  value.to_s + ' mg = ' + (value * 1000).to_s + ' uG'.colorize(:blue)
      elsif  choice == 4
        puts  value.to_s + ' uG = ' + (value / 1000).to_s + ' mG'.colorize(:blue)
      elsif  choice == 5
        puts  value.to_s + ' mG = ' + (value / 1000).to_s + ' G'.colorize(:blue)
      elsif  choice == 6
        puts  value.to_s + ' G = ' + (value / 1000).to_s + ' KG'.colorize(:blue)
      end
    else
      break
    end
  end
  choice
end

def volume_conversion(prompt)
  volume_choices = ['KL to L', 'L to mL', 'mL to uL', 'uL to mL', 'mL to L',
                    'L to KL', 'Back to Main Menu', 'Exit Application']
  while true
    volume_choice = prompt.select('Please Select: ', volume_choices)
    choice = volume_choices.find_index(volume_choice) + 1
    if choice >= 1 && choice <= 6
      value = get_value('Please enter value to convert: ')
      if choice == 1
        puts  value.to_s + ' KL = ' + (value * 1000).to_s + ' L'.colorize(:blue)
      elsif  choice == 2
        puts  value.to_s + ' L = ' + (value * 1000).to_s + ' mL'.colorize(:blue)
      elsif  choice == 3
        puts  value.to_s + ' mg = ' + (value * 1000).to_s + ' uL'.colorize(:blue)
      elsif  choice == 4
        puts  value.to_s + ' uL = ' + (value / 1000).to_s + ' mL'.colorize(:blue)
      elsif  choice == 5
        puts  value.to_s + ' mL = ' + (value / 1000).to_s + ' L'.colorize(:blue)
      elsif  choice == 6
        puts  value.to_s + ' L = ' + (value / 1000).to_s + ' KL'.colorize(:blue)
      end
    else
      break
    end
  end
  choice
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
      break if value == 8
    elsif choice == 3
      value = display_definitions(prompt)
      break if value == 8
    elsif choice == 4
      value = volume_conversion(prompt)
      break if value == 8
    elsif choice == 5
      value = mass_conversion(prompt)
      break if value == 3
    elsif choice == 6
      value = bmi_calculator(prompt)
      break if value == 3
    else
      break
    end
  end
  save_data(read_data, curr_data)
end

main_loop