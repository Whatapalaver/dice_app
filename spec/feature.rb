require './lib/dice.rb'

# Feature 1
# As a board game player,
# So that I can play the game
# I can have a dice

dice = Dice.new
puts dice

# Feature 2
# As a board game player,
# So that I know how many steps I should move
# I can roll a dice and get a number between 1 and 6

roll_result = dice.roll
puts roll_result

# Feature 3
# As a dice app developper,
# So that I give players a good game experience
# I want the dice roll to be randomly picked

 array1 = []
 array2 = []

 10.times {array1 << dice.roll}
 10.times {array2 << dice.roll}

 puts "First 10 rolls #{array1} shouldn't equal second 10 rolls #{array2}"