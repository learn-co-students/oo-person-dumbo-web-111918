# your code goes here
require 'pry'

class Person

    # - get paid/receive payments
    # - take a bath
    # - call a friend
    # - start a conversation
    # - state if they are happy and/or clean

  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name, hygiene = 8, happiness = 8, bank_account = 25)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happiness_points)
    if happiness_points > 10
      @happiness = 10
    elsif happiness_points < 0
      @happiness = 0
    else
      @happiness = happiness_points
    end
  end

  def hygiene=(hygiene_points)
    if hygiene_points > 10
      @hygiene= 10
    elsif hygiene_points < 0
      @hygiene= 0
    else
      @hygiene= hygiene_points
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    self.bank_account+= salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene += -3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(conversation_starter, conversation_topic)
    if conversation_topic == "politics"
      self.happiness += -2
      conversation_starter.happiness += -2
      return "blah blah partisan blah lobbyist"
    elsif conversation_topic == "weather"
      self.happiness += 1
      conversation_starter.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end

buckets = Person.new("buckets")
pale = Person.new("pale")
# binding.pry
