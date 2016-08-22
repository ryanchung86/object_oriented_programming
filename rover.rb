class Rover

attr_accessor :direction

def initialize(x, y, direction)
  @x = x
  @y = y
  @direction = direction
end

def move
  if @direction == "N"
    @y += 1
  elsif @direction == "S"
    @y -= 1
  elsif @direction == "E"
    @x += 1
  elsif @direction == "W"
    @x -= 1
  end
end

def left
  if @direction == "N"
    @direction = "W"
  elsif @direction == "S"
    @direction = "E"
  elsif @direction == "E"
    @direction = "N"
  elsif @direction == "W"
    @direction = "S"
  end
end

def right
  if @direction == "N"
    @direction = "E"
  elsif @direction == "S"
    @direction = "W"
  elsif @direction == "E"
    @direction = "S"
  elsif @direction == "W"
    @direction = "N"
  end
end

def read_instruction

puts "What is the width and length of the plateau? (w l)"
plateau = gets.chomp

puts "What is pathfinder's position?"
p_position = gets.chomp

puts "What are pathfinder's instructions?"
p_moves = gets.chomp

# puts "What is sojourner's position?"
# s_position = gets.chomp
#
# puts "What are sojourner's instructions?"
# s_moves = gets.chomp
pathfinder = Rover.new(1, 2, "N")
# sojourner = Rover.new(3, 3, "E")

end
