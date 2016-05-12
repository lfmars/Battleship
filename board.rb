#module Battle
class MainBoard
  attr_accessor :size

    def initialize(get_size)
      @size = get_size
    end

    def board_element
      ["----", "|   ", "| X ", "|<=>", "| * "]
    end

    def first_line
      print "  |"
        @size.times do |n|
          if ((n+1) < 10)
            print " #{n+1} |"
          else
            print " #{n+1}|"
          end
        end
      puts
    end

    def horizont_line
      print '---'
        @size.times do print board_element[0] end
      puts
    end

    def ship_line(lineNumber)
      x='A'.ord + lineNumber
      print " #{x.chr}"
        @size.times do print board_element[rand(4)+1] end
      puts '|'
    end

    def draw_board
      first_line
        @size.times do |lineNumber|
          horizont_line
          ship_line(lineNumber)
        end
      horizont_line
    end

end

#MainBoard.new(5).draw_board
