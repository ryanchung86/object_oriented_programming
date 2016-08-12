class Rover

def initialize(x, y, direction)
  @x = x
  @y = y
  @direction = direction
end

def read_instruction
end

end

pathfinder = Rover.new(1, 2, "N")
sojourner = Rover.new(3, 3, "E")

puts "How wide is the plateau?"
width = gets.chomp

puts "How long is the plateau?"
length = gets.chomp

puts "What are my instructions?"
moves = gets.chomp
