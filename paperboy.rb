class Paperboy

attr_accessor :earnings
attr_accessor :experience

  def initialize(name, side)
    # create paperboy instance
    @name = name
    @side = side
    @experience = 0
    @earnings = 0

  end

  def quota
    # return paperboy's quota for next delivery
    puts 50 + @experience / 2
  end

  def deliver(start_address, end_address)
    # start and end address is given,
    # amount of money earned and updated experience is returned
    # get number of houses based on @side
    (start_address..end_address).each do |house|
      if (@side == "even") && (house % 2 == 0)
        @experience += 1
        @earnings = @experience * 0.25
        
      end
      
    end
    puts @earnings
  end

  def income

  end

  def report
    # return string about paperboy's performance
    "I'm #{@name}, I've delivered #{quota} papers and I've earned"
  end

end

tommy = Paperboy.new("Tommy", "even")

tommy.quota
tommy.deliver(101, 220)
tommy.earnings
tommy.report
