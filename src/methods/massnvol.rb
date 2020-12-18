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
    puts "\e[H\e[2J"
    loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
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
    puts "\e[H\e[2J"
    loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
  end