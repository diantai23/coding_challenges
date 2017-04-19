class Card

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_suit
    @suits = [:spades, :hearts, :diamonds, :clubs]
    random_one = @suits.shuffle!.first
  end

  def self.random_rank
    @ranks = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
    random_one = @ranks.shuffle!.first
  end

  def self.random_card
    Card.new(Card.random_rank, Card.random_suit)
  end
end


class Deck

## Auto stores each card in an array
  def initialize
    @cards = []
    @suits = [:spades, :hearts, :diamonds, :clubs]
    @ranks = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]

    @suits.to_a.each do |suit|
      @ranks.to_a.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end

  end

## Outputs each card
  def output
    @cards.each do |card|
      card.output_card
    end
    return self
  end


## Randomly orders the array of cards in the deck
  def shuffle
    @cards.shuffle!
  end


## Returns top card from deck and removes it from the array
  def deal

  end

end
