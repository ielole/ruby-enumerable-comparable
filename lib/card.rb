# A simple representation of a playing card.
class Card
  SUITS = %w(C D H S).freeze
  RANKS = [(2..10).to_a, %w(J Q K A)].flatten.freeze

# need to include Comparable to not get an error

  attr_reader :suit, :rank

  def <=>(other)
    # rank <=> other.rank
    # what does rank return ? a number ?
    rank_compare = RANKS.index(rank) <=> RANKS.index(other.rank)
    # above each side will return a number
    # assign to variable to for testing ()
    return rank_compare unless rank_compare.zero?
    # based on true false values of spaceship (?)
    # a <=> b , if a > b , if a = b , if a < b
    end
  end

  def initialize(rank, suit)
    raise ArgumentError,
          "Suit: '#{suit}' not in #{SUITS}" unless SUITS.include? suit
    raise ArgumentError,
          "Rank: '#{rank}' not in #{RANKS}" unless RANKS.include? rank

    @suit = suit
    @rank = rank
  end

  def to_s
    "#{rank}:#{suit}"
  end
end
