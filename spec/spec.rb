require 'rspec/autorun'

describe Calculations do
  let(:calculator) { Calculations.new }

  it "finds the factor of 8" do  
    expect(calculator.factorial_of(8)).to eq(4, 12)
  end
end

describe Factorial do
  it "does something" do
    # this is the output
  end
end

describe Output do
    describe "#submit" do
  @bmi_calculator - true
  @>12.5
  if
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
       expect == choice
      end
    end
  end


  describe Output do
    describe "#Updated Successfully" do
  @bmi_calculator - true
  @>12.5
  if
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
      Output == 'Updated Successfully'
    end
  end