require './game'

puts "Kokio dydzio lentoj kariausim?"
size = gets.to_i
MainBoard.new(size, Shipyard.new(size)).draw_board
