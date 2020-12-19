def save_data(read_data, curr_data)
  open('../medication-store.txt', 'w') do |f|
    read_data.each do |item|
      f.puts(item.get_name + ',' + item.get_use + ',' + item.get_schedule)
    end
    curr_data.each do |item|
      f.puts(item.get_name + ',' + item.get_use + ',' + item.get_schedule)
    end
  end
  puts "\e[H\e[2J"
  loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
end

def read_medication(read_data)
  if File.exist?('../medication-store.txt')
    File.open('../medication-store.txt').each do |line|
      data = line.split(',')
      read_data << Medication.new(data[0], data[1], data[2])
    end
  else
    puts 'No file named medication-info.txt found in current directory'
  end
  read_data
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
  puts "\e[H\e[2J"
  loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
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
  puts "\e[H\e[2J"
  loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
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
  puts "\e[H\e[2J"
  loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
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
  puts "\e[H\e[2J"
  loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
  value
end
