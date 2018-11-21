# your code goes here
require 'pry'

class Person



  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account




  def hygiene=(num)
    @hygiene = num
    if @hygiene < 0
      @hygiene = 0
    elsif @hygiene > 10
      @hygiene = 10
    end
  end


  def happiness=(num)
    @happiness = num
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    end
  end


  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(self.hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    # binding.pry
  end

  def work_out
    self.hygiene=(self.hygiene - 3)
    self.happiness=(self.happiness+2)
    # binding.pry
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    person.happiness=(person.happiness + 3)
    self.happiness=(self.happiness + 3)
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic.upcase == "POLITICS"
      self.happiness=(self.happiness - 2)
      person.happiness=(person.happiness - 2)
      return "blah blah partisan blah lobbyist"
    elsif topic.upcase == "WEATHER"
      self.happiness=(self.happiness + 1)
      person.happiness=(person.happiness + 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
