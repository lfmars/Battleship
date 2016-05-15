#require './game'

class Shipkoo

  def leng
      l = gets.chomp.to_i
      l
  end

  def wid
    w =  gets.chomp.to_i
    w
  end

  def draw_b
    x = MainBoard.new()
    x.draw_board
  end
end
