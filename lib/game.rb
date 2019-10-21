require 'dragonpet'

class Game

  def start
    @dragon = DragonPet.new
    main
  end

  private

  def display
    system 'clear'
    puts "           ,  ,"
    puts "           \\ \\"
    puts "           ) \\ \\    _p_"
    puts "          )\\))\\))  /   *\\ "
    puts "           \_|| || / /^`-'"
    puts "  __       -\\ \\--/ /"
    puts "<'  \\___/   ___. )'"
    puts "     `====\\ )___/\\"
    puts "          //     `\""
    puts "          \\    /  \\"
    puts "          `\""
    puts "           +=========+"
    puts "           |  Dragon |"
    puts "           | Gigapet |"
    puts "           \"\"\"\"\"\"\"\"\"\"\""
    puts "Energy: #{@dragon.energy}"
    puts
    puts "Fun: #{@dragon.fun}"
    puts
    puts "Hunger: #{@dragon.hunger}"
    puts
    puts "Affection: #{@dragon.affection}"
    puts
  end

  def main
    #15.times do
    loop do
      display
      get_input
      adjustments
    end
  end

  def get_input
    puts "Play, Feed, Pet, Tuck in, or Quit"
    print "> "
    @input = gets.capitalize.chomp
    if @input == "Quit"
      exit!
    end
  end

  def adjustments
    if @input == "Feed"
      @dragon.hunger_adjustments
      @dragon.hunger_step
    elsif @input == "Play"
      @dragon.fun_adjustments
      @dragon.fun_step
    elsif @input == "Pet"
      @dragon.affection_adjustments
      @dragon.affection_step
    elsif @input == "Tuck in"
      @dragon.energy_adjustments
      @dragon.energy_step
    else
      @dragon.step
    end
  end
end
