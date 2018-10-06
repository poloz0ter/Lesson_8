class PassengerWagon < Wagon
  def initialize(number, free_places)
    super(number)
    @type = :passenger
    @free_places = free_places
    @occup_places = 0
  end

  attr_reader :occup_places, :free_places

  def set_place
    @free_places -= 1
    @occup_places += 1
    raise "Больше нет свободных мест" if @free_places == 0
  rescue StandardError => e
    puts e.message
  end
end
