#require './shipkoo'


class Shipyard
  attr_accessor :see_size, :test

  def initialize
    @see_size = 4#MainBoard.new().size
  end

  def empty_see_array
    Array.new(see_size) {Array.new(see_size,1)}
  end

  def see
    see_array = empty_see_array
    2.times do see_array[Shipkoo.new().leng][Shipkoo.new().wid] = 3  end
    see_array
  end

end
