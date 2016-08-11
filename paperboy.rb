class Paperboy

# attr_reader :earnings
# attr_accessor :experience

  def initialize(name, side)
    # create paperboy instance
    @name = name
    @experience = 0
    @side = side
    @earnings = 0

  end

  def quota
    # return paperboy's quota for next delivery
    50 + @experience / 2
  end

  def deliver(start_address, end_address)
    # start and end address is given,
    # amount of money earned and updated experience is returned
    # get number of houses based on @side
    
  end

  def report
    # return string about paperboy's performance, including
    # updated experience
  end

end
