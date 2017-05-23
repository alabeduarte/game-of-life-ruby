# frozen_string_literal: true

require_relative '../../lib/game_of_life'

describe GameOfLife::Generation do
  describe '#render' do
    it 'renders a generation given an initial matrix' do
      matrix = Matrix[
        ['.', '.', '.', '.', '.', '.', '.', '.'],
        ['.', '.', '.', '.', '#', '.', '.', '.'],
        ['.', '.', '.', '#', '#', '.', '.', '.'],
        ['.', '.', '.', '.', '.', '.', '.', '.'],
      ]

      generation = GameOfLife::Generation.new(matrix)

      expect(generation.render).to eq(
        "........\n" \
        "....#...\n" \
        "...##...\n" \
        "........\n"
      )
    end

    it 'renders the next generation' do
      matrix = Matrix[
        ['.', '.', '.', '.', '.', '.', '.', '.'],
        ['.', '.', '.', '.', '#', '.', '.', '.'],
        ['.', '.', '.', '#', '#', '.', '.', '.'],
        ['.', '.', '.', '.', '.', '.', '.', '.'],
      ]

      first_generation = GameOfLife::Generation.new(matrix)
      next_generation = first_generation.next

      expect(next_generation.render).to eq(
        "........\n" \
        "...##...\n" \
        "...##...\n" \
        "........\n"
      )
    end
  end
end
