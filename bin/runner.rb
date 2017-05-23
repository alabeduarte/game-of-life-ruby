require_relative '../lib/game_of_life'

INPUT = './bin/samples/input.txt'

initial_state = File.readlines(INPUT).map { |l| l.split("\n") }
generation = GameOfLife::Generation.new(initial_state)

system 'clear'
puts generation.render
while(true) do
  sleep 1.2
  system 'clear'

  puts generation.next.render
end