class Hunger

  attr_reader :value_hunger

  MAX_HUNGER = 100
  HIGH_HUNGER = 90
  MUCH_HUNGER = 70
  MIDDLE_HUNGER = 50
  MILD_HUNGER = 30
  LOW_HUNGER = 10
  TIME_STEP_HUNGER = -10
  TIME_INCREASE_HUNGER = -20

  def initialize
    @value_hunger = rand(MILD_HUNGER..HIGH_HUNGER)
  end

  def status_hunger
    case @value_hunger
    when 0..LOW_HUNGER
     "Dying of starvation."
    when LOW_HUNGER..MILD_HUNGER
     "Incredibly hungry."
    when MILD_HUNGER..MIDDLE_HUNGER
     "Could use some food."
    when MIDDLE_HUNGER..MUCH_HUNGER
     "Just ate recently."
    when MUCH_HUNGER..HIGH_HUNGER
     "Not really hungry."
    when HIGH_HUNGER..MAX_HUNGER
      "Can't eat anymore!"
    end
  end

  def step_hunger
    @value_hunger += TIME_STEP_HUNGER
    if @value_hunger < 0
      @value_hunger = 0
    end
    if @value_hunger == 0
      puts "The dragon ate you!"
      puts "GAME OVER!"
      exit!
    end
  end

  def adjustments_hunger
    if @input = "Feed"
      @value_hunger -= TIME_INCREASE_HUNGER
    end
    if @value_hunger > 100
      @value_hunger =  100
    end
  end
end
