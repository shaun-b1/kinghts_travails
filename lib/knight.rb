require_relative 'board'

class Knight
  attr_accessor :value, :children

  POSSIBLE_MOVES = [[1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]].freeze

  def initialize(value, parent = nil)
    @value = value
    @parent = parent
    @children = []
  end

  def create_children
    moves = POSSIBLE_MOVES.map {|pos| [value[0] + pos[0], value[1] + pos[1]]}
    p moves
  end

  def valid_move
    #remove values that are off the board
  end
end
