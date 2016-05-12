class Shipyard
  attr_accessor :see_size

  def initialize(see_size)
    @see_size = see_size
  end

  def see_array
    Array.new(@see_size) {Array.new(@see_size,1)}
  end

  def set_ship
    see = see_array
    see[1][2]=3
    return see
  end

end
