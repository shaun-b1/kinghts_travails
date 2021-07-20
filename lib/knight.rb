require_relative 'board'

class Knight
  attr_accessor :value, :parent, :children

  POSSIBLE_MOVES = [[1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]].freeze

  def initialize(value, parent = nil)
    @value = value
    @parent = parent
    @children = []
  end

  def create_children
    POSSIBLE_MOVES.map {|pos| [value[0] + pos[0], value[1] + pos[1]]}
                          .keep_if {|coord| valid_move?(coord) && coord != @value}
  end

  def valid_move?(position)
    position[0].between?(0, 7) && position[1].between?(0, 7)
  end
end
