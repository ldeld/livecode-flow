# User chooses one of the three hands
# Check if hand is valid
# IF it's not valid, ask again
# Computer randomly chooses a hand

# Check who wins
# Display info to the user

options = %w(rock paper scissors)

puts "Type rock, scissors or paper"
answer = gets.chomp
until options.include? answer
  puts "Wrong pick, type again"
  answer = gets.chomp
end

computer_pick = options.sample
puts "Computer chose #{computer_pick}"

if computer_pick == answer
  puts "It's a tie"
else
  case computer_pick
  when 'rock'
    winning_hand = 'paper'
  when 'paper'
    winning_hand = 'scissors'
  else
    winning_hand = 'rock'
  end

  verb = answer == winning_hand ? 'won' : 'lost'
  puts "You #{verb}!"
end
