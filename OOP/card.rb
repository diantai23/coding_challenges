require 'pry'

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

# dealer class
# deal to each player. n number of cards per hand per person

class Deck

## Auto stores each card in an array

  def initialize #like setting up data to use later in class
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
  #  return self #says return this instance of the class
  end


## Randomly orders the array of cards in the deck
  def shuffle
    @cards.shuffle!
    binding.pry
  end


## Returns top card from deck and removes it from the array
  def deal

    @first_card =  @cards.shift

    return @first_card

  end

end

#binding.pry
new = Deck.new

# IRB: new.output
# vs
#new = Deck.new.output
# IRB: new

new.output

# binding.pry
