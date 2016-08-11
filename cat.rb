class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time == 0
      return "12 AM"
    elsif @meal_time < 12
      return "#{@meal_time} AM"
    elsif @meal_time == 12
      return "12 PM"
    elsif @meal_time <= 23
      return "#{@meal_time - 12} PM"
    else
      return "learn how to tell time"
    end
  end

end

buttons = Cat.new("Mr. Buttons", "mouse", 10)

catlyn = Cat.new("Catlyn Stark", "cat food", 11)
