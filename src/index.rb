require 'tty-prompt'
require 'tty-font'
require 'colorize'
#require 'bundler'
#require 'rspec'

require_relative './methods/mainloop.rb'
require_relative './methods/medication.rb'
require_relative './methods/massnvol.rb'
require_relative './methods/defandsup.rb'
require_relative './methods/bmi.rb'
require_relative './classes/classes.rb'

loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))




main_loop