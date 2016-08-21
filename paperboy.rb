class Paperboy

  attr_reader :earnings
  attr_accessor :experience

  def initialize(name, side)
    @name = name
    @experience = 0
    @side = side
    @earnings = 0
  end

  def quota
  # returns paperboy's quota for next delivery
    @quota = 50 + @experience / 2
  end

  def deliver(start_address, end_address)
  # takes two house numbers and returns $ earned on day's delivery
  # also updates paperboy's experience
    payday = 0
    deliveries = 0

    (start_address..end_address).each do |house|
      if (@side == "even") && (house % 2 == 0)
        payday += 0.25 if deliveries <= @quota
        payday += 0.50 if deliveries > @quota
        deliveries += 1
      elsif (@side == "odd") && (house % 2 != 0)
        payday += 0.25 if deliveries <= @quota
        payday += 0.50 if deliveries > @quota
        deliveries += 1
      end
    end

    @earnings += payday
    @experience += deliveries

    if deliveries < @quota
      @earnings -= 2
    end

    return payday
  end

  def report
  # returns a strong about paperboy's performance
    return "I'm #{@name}, I've delivered #{@experience} papers and earned $#{@earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy", "even")
tommy.quota
tommy.deliver(101, 220)
tommy.earnings
tommy.report

tommy.quota
tommy.deliver(1, 150)
tommy.earnings
tommy.report
