class Fun

  attr_reader :value_fun

  MAX_FUN = 100
  HIGH_FUN = 90
  MUCH_FUN = 70
  MIDDLE_FUN = 50
  MILD_FUN = 30
  LOW_FUN = 10
  TIME_STEP_FUN = -5
  TIME_INCREASE_FUN = -15

  def initialize
    @value_fun = rand(MILD_FUN..HIGH_FUN)
  end

  def status_fun
    case @value_fun
    when 0..LOW_FUN
     "Bored to tears."
    when LOW_FUN..MILD_FUN
     "Wishes it was doing something."
    when MILD_FUN..MIDDLE_FUN
     "Doing alright."
    when MIDDLE_FUN..MUCH_FUN
     "Is having some fun."
    when MUCH_FUN..HIGH_FUN
     "Having a whole lot of fun."
    when HIGH_FUN..MAX_FUN
     "Insane amounts of fun!"
    end
  end

  def step_fun
    @value_fun += TIME_STEP_FUN
    if @value_fun < 0
      @value_fun = 0
    end
    if @value_fun == 0
      puts "The dragon doesn't want to play with you anymore!"
      puts "GAME OVER!"
      exit!
    end
  end

  def adjustments_fun
    if @input = "Play"
      @value_fun -= TIME_INCREASE_FUN
    end
    if @value_fun > 100
      @value_fun =  100
    end
  end

end
