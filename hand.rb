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

  def score
    [hand_score, card_score].flatten
  end
  attr_reader :hand_array, :cards

  # this method return score of a hand.
  def hand_score
    scoring_hands.map.with_index { |scoring_hand, i| i if scoring_hand }.compact.max
  end

  # this method return score a card.
  def card_score
    five_high_straight? ? [5, 4, 3, 2, 1] : card_score_array
  end
  # this method return card score based on occurance of value of a card.
  def card_score_array
    rank_count_hash
        .sort_by { |rank, count| [-count, -rank] }
        .map { |count_rank_array| count_rank_array[0] }
  end

  # this method return hands rank methods and each method checks rank of a hand bases on poker rules.

  def scoring_hands
    [high_card?, one_pair?, two_pair?, three_of_a_kind?, five_high_straight?,
     straight?, flush?, full_house?, four_of_a_kind?, straight_flush?]
  end

  # below 10 methods return rank of a hand based on pokker rules as an integer value.
  def high_card?
    rank_count_totals.max == 1
  end
  def one_pair?
    rank_count_totals.max == 2
  end
  def two_pair?
    rank_count_totals.sort == [1, 2, 2]
  end
  def three_of_a_kind?
    rank_count_totals.max == 3
  end
  def five_high_straight?
    rank_values.sort == [2, 3, 4, 5, 14]
  end
  def straight?
    rank_values.each_cons(2).all? { |a, b| a + 1 == b }
  end
  def flush?
    suits.uniq.count == 1
  end
  def full_house?
    rank_count_totals.sort == [2, 3]
  end
  def four_of_a_kind?
    rank_count_totals.max == 4
  end
  def straight_flush?
    straight? && flush?
  end

  # method return no of occurrences of a value of a card as an array.

  def rank_count_totals
    rank_count_hash.values
  end

  # this method return card value with no of occurances as an key value hash.
  def rank_count_hash
    rank_values.each_with_object(Hash.new(0)) { |value, count| count[value] += 1 }
  end

  #this method return values of all cards in an hand.
  def rank_values
    cards.map(&:rank_value).sort
  end
  #this method return suit of all cards in a hand.
  def suits
    cards.map(&:suit)
  end


end 
