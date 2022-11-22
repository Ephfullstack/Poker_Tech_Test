require './card'

class Hand 
    
 # this method initialize hand with the cards.
 def initialize(hand_array)
    @hand_array = hand_array
    @cards = hand_array.map { |card| Card.new(card[:value], card[:suit]) }
  end

  # simple method which returns hand as an array 
  def to_a
    hand_array
  end 

  #method retuns suit of all cards in hand 
  def suits
    card.map(&:Suit)
  end 

  #this method returns values of all cards in an hand 
  def rank_values
    cards.map(&:rank_value).sort
  end

  # this method return card value with no of occurances as an key value hash.
  def rank_count_hash
    rank_values.each_with_object(Hash.new(0)) { |value, count| count[value] += 1 }
  end

   # method return no of occurrences of a value of a card as an array.

   def rank_count_totals
    rank_count_hash.values
   end

  




end 
