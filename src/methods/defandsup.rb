def vitamin_use(prompt)
    vitamins = ['Vitamin D- Helps your body absorb calcium', 'Vitamin C- Immune system Boost/growth', 'Vitamin B Complex- Increase Energy, Brain Function and Cell Metabolism', 'IVP– Intravenous Push',
                   'Iron- Increase Energy, Brain Function and Promotes Healthy Red Blood Cells', 'Zinc- Immune Support/Energy Absorbtion', 'Calcium- Promotes Strong Bones and Teeth', 
                   'Magnesium- Bone Health/Energy Production (also good for cramps)', 'Folate/Folic Acid- Aids Fetus Development, Fights Depression and combats Inflammation']
    puts 'List of Useful supplements'.colorize(:blue)
    vitamins.each do |item|
      puts item
    end
    menu_choices = ['Back to Main Menu', 'Exit Application']
    menu_choice = prompt.select('Please Select: ', menu_choices)
    menu_choices.find_index(menu_choice) + 1
    puts "\e[H\e[2J"
    loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
  end
  
  def display_definitions(prompt)
    definitions = ['IM–  Intramuscular', 'IO – Intraosseous', 'IV – Intravenous', 'IVP – Intravenous Push',
                   'ID – Intradermal', 'IN – Intranasal', 'IP – Intraperitoneal', 'IT – Intrathecal', 'IVPB – Intravenous piggyback',
                   'p.o – By mouth', 'SC / SubQ – Subcutaneous', 'SL – Sublingual', 'top. – Topical', 'vag. – Vaginally']
    puts 'List of Definitions'.colorize(:blue)
    definitions.each do |item|
      puts item
    end
    menu_choices = ['Back to Main Menu', 'Exit Application']
    menu_choice = prompt.select('Please Select: ', menu_choices)
    menu_choices.find_index(menu_choice) + 1
    puts "\e[H\e[2J"
    loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
  end