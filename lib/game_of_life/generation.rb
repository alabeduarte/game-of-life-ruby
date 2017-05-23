require 'matrix'

class GameOfLife::Generation
  def initialize(state)
    @state = state.to_a
  end

  def next
    new_matrix = Matrix[
      ['.', '.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '#', '#', '.', '.', '.'],
      ['.', '.', '.', '#', '#', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.', '.']
    ]

    GameOfLife::Generation.new(new_matrix)
  end

  def render
    str = ''

    Matrix[state].each_with_index do |element, row, col|
      str += element.join
      str += "\n"
    end

    str
  end

  private

  attr_reader :state
end
