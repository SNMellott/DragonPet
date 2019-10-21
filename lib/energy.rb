class Energy

  attr_reader :value_energy

  MAX_ENERGY = 100
  HIGH_ENERGY = 90
  MUCH_ENERGY = 70
  MIDDLE_ENERGY = 50
  MILD_ENERGY = 30
  LOW_ENERGY = 10
  TIME_STEP_ENERGY = -10
  TIME_INCREASE_ENERGY = -25

  def initialize
    @value_energy = rand(MILD_ENERGY..HIGH_ENERGY)
  end

  def status_energy
    case @value_energy
    when 0..LOW_ENERGY
      "Barely Awake."
    when LOW_ENERGY..MILD_ENERGY
      "Tired."
    when MILD_ENERGY..MIDDLE_ENERGY
      "Doing good."
    when MIDDLE_ENERGY..MUCH_ENERGY
      "Awake and playful."
    when MUCH_ENERGY..HIGH_ENERGY
      "Very energetic!"
    when HIGH_ENERGY..MAX_ENERGY
      "Vibrating with energy!"
    end
  end

  def step_energy
    @value_energy += TIME_STEP_ENERGY
    if @value_energy < 0
      @value_energy = 0
    end
    if @value_energy == 0
      puts "The dragon died of exhaustion!"
      puts "GAME OVER!"
      exit!
    end
  end

  def adjustments_energy
    if @input = "Tuck in"
      @value_energy -= TIME_INCREASE_ENERGY
    end
    if @value_energy > 100
      @value_energy =  100
    end
  end

end
