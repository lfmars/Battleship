class MainBoard
  attr_accessor :size, :ships_class

    def initialize(get_size, ships_class)
      @size = get_size
      @ships_class = ships_class
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
        @size.times do |row| print board_element[ships_class.set_ship[lineNumber][row]] end
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
