require 'tty-prompt'
require 'tty-font'
require 'colorize'
require 'bundler'
require 'rspec'
require_relative './methods/methods.rb'
require_relative './classes/classes.rb'

loading_screen("T1A3 Ruby Code Terminal APP ".colorize(:blue))

main_loop