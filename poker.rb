require './hand'
require './card'

class Poker
    def initialize(hand_arrays)
      # Initializing Hand class instances from the hands json data.
      @hands = hand_arrays.map { |hand_array| Hand.new(hand_array) }
    end

    # rank hands method ranks hands basesd on their score.

  def rank_hands
    hands.sort_by{ |hand| hand.score }.reverse.map do |h|
      puts "Rank: #{h.hand_score}, Card:#{h.cards.inspect}"
    end
  end


end