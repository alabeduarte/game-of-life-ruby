# frozen_string_literal: true

require_relative '../lib/game_of_life'

INPUT = ARGV[0] || './bin/samples/input.txt'

initial_state = File.readlines(INPUT).map { |l| l.split("\n") }
generation = GameOfLife::Generation.new(initial_state)

def print_generation(generation)
  system 'clear'

  puts "Dead cell: \u{25A1}"
  puts "Alive cell: \u{25A0}"

  puts generation.render.tr('.', "\u{25A1}").tr('#', "\u{25A0}")
end

print_generation(generation)
loop do
  sleep 1.2

  print_generation(generation.next)
end
