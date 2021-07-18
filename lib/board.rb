require_relative 'knight'

class Board

  def initialize(root = nil)
    @root = root
  end

  def knight_moves(starting_pos)
    @root = Knight.new(starting_pos)
    @root.create_children
  end

  def queue
    #A method that creates a queue from the starting_pos, creates children for that node, and adds those children to the queue. exits once the front of the queue equals the end_pos
  end

  def history
    #a method that works its way back up the parents of each knight until it reaches the start knight. This should be similar to #contains in the linked list
  end

  def output
    #a method that formats and prints out the required text
  end
end
