require './card'

class Hand 
    
 # this method initialize hand with the cards.
 def initialize(hand_array)
    @hand_array = hand_array
    @cards = hand_array.map { |card| Card.new(card[:value], card[:suit]) }
  end

  

end 
