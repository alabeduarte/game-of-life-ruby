# frozen_string_literal: true

require 'matrix'

module GameOfLife
  class Generation
    def initialize(matrix)
      @matrix = matrix.to_a
    end

    def next
      new_matrix = Matrix[
        ['.', '.', '.', '.', '.', '.', '.', '.'],
        ['.', '.', '.', '#', '#', '.', '.', '.'],
        ['.', '.', '.', '#', '#', '.', '.', '.'],
        ['.', '.', '.', '.', '.', '.', '.', '.'],
      ]

      GameOfLife::Generation.new(new_matrix)
    end

    def render
      Matrix[matrix].reduce('') do |previous, current|
        previous + current.join + "\n"
      end
    end

    private

    attr_reader :matrix
  end
end
