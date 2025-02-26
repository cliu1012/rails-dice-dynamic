class DiceController < ApplicationController
  def homepage
    render({ :template => "/dice_templates/home" })
  end

  def dynamic_roll
    @number_of_dice = params.fetch("number").to_i
    @number_of_sides = params.fetch("sides").to_i

    @dice_rolls = Array.new
    
    @number_of_dice.times do
      roll = rand(1..@number_of_sides)
      @dice_rolls.push(roll)
    end

    render({ :template => "/dice_templates/dice_roll"})
  end
end
