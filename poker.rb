require './hand'
require './card'

class Poker
    def initialize(hand_arrays)
      # Initializing Hand class instances from the hands json data.
      @hands = hand_arrays.map { |hand_array| Hand.new(hand_array) }
    end
end