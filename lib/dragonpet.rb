require 'energy'
require 'hunger'
require 'affection'
require 'fun'

class DragonPet

  def initialize
    @energy = Energy.new
    @fun = Fun.new
    @hunger = Hunger.new
    @affection = Affection.new
  end

  def hunger
    @hunger.status_hunger
    #@hunger.value_hunger
  end

  def hunger_adjustments
    @hunger.adjustments_hunger
  end

  def energy
    @energy.status_energy
    #@energy.value_energy
  end

  def energy_adjustments
    @energy.adjustments_energy
  end

  def fun
    @fun.status_fun
    #@fun.value_fun
  end

  def fun_adjustments
    @fun.adjustments_fun
  end

  def affection
    @affection.status_affection
    #@affection.value_affection
  end

  def affection_adjustments
    @affection.adjustments_affection
  end

  def hunger_step
    @energy.step_energy
    @fun.step_fun
  end

  def energy_step
    @hunger.step_hunger
    @affection.step_affection
  end

  def affection_step
    @energy.step_energy
    @hunger.step_hunger
  end

  def fun_step
    @hunger.step_hunger
    @energy.step_energy
  end

  def step
    @hunger.step_hunger
    @energy.step_energy
    @affection.step_affection
    @fun.step_fun
  end

end
