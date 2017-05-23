# frozen_string_literal: true

require_relative '../lib/game_of_life'

INPUT = ARGV[0] || './bin/samples/input.txt'

initial_state = File.readlines(INPUT).map { |l| l.split("\n") }
generation = GameOfLife::Generation.new(initial_state)

system 'clear'
puts generation.render
loop do
  sleep 1.2
  system 'clear'

  puts generation.next.render
end
