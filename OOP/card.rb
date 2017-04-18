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
    suits = [:spades, :hearts, :diamonds, :clubs]
    random_one = suits.shuffle!.first
  end

  def self.random_card
    Card.new(rand(1..13), Card.random_suit)
  end
end

card = Card.random_card
puts card.output_card

class Deck

## Auto stores each card in an array
  def initialize
    @cards = []
    @cards << Card.new(rand(10), :spades)
    @cards << Card.new(rand(9), :hearts)
  end

## Outputs each card
  def output
    @cards.each do |card|
      card.output_card
    end
  end

## Randomly orders the array of cards in the deck
  def shuffle
    @cards.shuffle!
  end

## Returns top card from deck and removes it from the array
  def deal

  end

end

#card = Card.random_card
#puts card.output_card
