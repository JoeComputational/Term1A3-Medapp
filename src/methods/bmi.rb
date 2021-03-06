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
  puts "\e[H\e[2J"
  loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))
  choice
end