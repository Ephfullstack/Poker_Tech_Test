#card class which initialize a card with suit and rank.
class Card

    RANK_VALUES = {'1' => 1,'2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
                   '7' => 7, '8' => 8, '9' => 9, '10' => 10,
                   '11' => 11, '12' => 12, '13' => 13,
                   'J' => 11, 'Q' => 12, 'K' => 13, 'A' => 1}
    attr_reader :rank, :suit
    def initialize(rank,suit)
      @rank = rank
      @suit = suit
    end
    #this method return card rank as integer value.
    def rank_value
      RANK_VALUES[rank.to_s]
    end
  end

  #testing to see if it works
  puts card = Card.new("Q", "club")
  
  puts card.rank_value



