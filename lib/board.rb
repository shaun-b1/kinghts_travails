require_relative 'knight'

class Board

  def initialize(); end

  def knight_moves(starting_pos, end_pos)
    queue(starting_pos, end_pos)
    #output(starting_pos, end_pos)
  end

  def queue(starting_pos, end_pos, queue = [])
    queue.push(Knight.new(starting_pos))
    until queue.first.value == end_pos
      current = queue.first
      current.create_children.each do |child|
        knight = Knight.new(child, current)
        current.children.push(knight)
        queue.push(knight)
      end
      queue.shift
    end
    p queue.first
    #A method that creates a queue from the starting_pos, creates children for that node, and adds those children to the queue. exits once the front of the queue equals the end_pos
  end

  def history(end_pos, starting_pos)
    #a method that works its way back up the parents of each knight until it reaches the start knight. This should be similar to #contains in the linked list
  end

  def output(starting_pos, end_pos)
    #a method that formats and prints out the required text
  end
end
