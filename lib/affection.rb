class Affection

  attr_reader :value_affection

  MAX_AFFECTION = 100
  HIGH_AFFECTION = 90
  MUCH_AFFECTION = 70
  MIDDLE_AFFECTION = 50
  MILD_AFFECTION = 30
  LOW_AFFECTION = 10
  TIME_STEP_AFFECTION = -5
  TIME_INCREASE_AFFECTION = -10

  def initialize
    @value_affection = rand(MILD_AFFECTION..HIGH_AFFECTION)
  end

  def status_affection
    case @value_affection
    when 0..LOW_AFFECTION
     "Doesn't like you."
    when LOW_AFFECTION..MILD_AFFECTION
     "Craves attention."
    when MILD_AFFECTION..MIDDLE_AFFECTION
     "Doing okay. Would like some attention."
    when MIDDLE_AFFECTION..MUCH_AFFECTION
     "Thinks you're okay."
    when MUCH_AFFECTION..HIGH_AFFECTION
     "Really likes you"
    when HIGH_AFFECTION..MAX_AFFECTION
     "Loves you!"
    end
  end

  def step_affection
    @value_affection += TIME_STEP_AFFECTION
    if @value_affection < 0
      @value_affection = 0
    end
    if @value_hunger == 0
      puts "The dragon hates you!"
      puts "GAME OVER!"
      exit!
    end
  end

  def adjustments_affection
    if @input = "Pet"
      @value_affection -= TIME_INCREASE_AFFECTION
    end
    if @value_affection > 100
      @value_affection =  100
    end
  end

end
