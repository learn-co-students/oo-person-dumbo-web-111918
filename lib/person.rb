# your code goes here
require 'pry'

class Person

    # - get paid/receive payments
    # - take a bath
    # - call a friend
    # - start a conversation
    # - state if they are happy and/or clean

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name, hygiene = 8, happiness = 8, bank_account = 25)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happiness_points)
    if @happiness + happiness_points > 10
      self.happiness = 10
    elsif @happiness + happiness_points < 0
      self.happiness = 0
    else
      sum = self.happiness + happiness_points
      @happiness = sum
    end
  end

  def hygiene=(hygiene_points)
    if @hygiene + hygiene_points > 10
      @hygiene=(10)
    elsif @hygiene + hygiene_points < 0
      @hygiene=(0)
    else
      @hygiene=(@hygiene + hygiene_points)
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account=(@bank_account + salary)
    return "all about the benjamins"
  end

  def take_bath
    hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    happiness += 4
    hygiene += -3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

end

buckets = Person.new("buckets")
pale = Person.new("pale")
binding.pry

0
