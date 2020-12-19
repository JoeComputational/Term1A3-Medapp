require 'tty-prompt'
require 'tty-font'
require 'colorize'
require 'bundler'
require 'rspec'

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