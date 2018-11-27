require 'pry'


class Person

  attr_reader :name, :bank_account, :happiness, :hygiene 
  attr_writer :bank_account
  def initialize(name)
    @name = name 
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(arg)
    @happiness = arg
    if @happiness > 10 
      @happiness = 10
    elsif 
      @happiness < 0 
      @happiness = 0
    end
  end
  
  def hygiene=(arg)
    @hygiene = arg
    if @hygiene > 10 
      @hygiene = 10
    elsif 
      @hygiene < 0 
      @hygiene = 0
    end
  end

  def happy? 
    if @happiness > 7 
      return true 
    else
      false 
    end 
  end
  
  def clean? 
    if @hygiene > 7 
      return true 
    else
      false 
    end 
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
    
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out 
     self.hygiene -= 3
     self.happiness += 2
     "♪ another one bites the dust ♫"
  end

  def call_friend(friend) 
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person,topic) 
    case topic 
      when "politics"
        person.happiness -= 2 
        self.happiness -=2 
        'blah blah partisan blah lobbyist'
      when "weather"
        person.happiness += 1 
        self.happiness += 1 
        'blah blah sun blah rain'
      else 
        "blah blah blah blah blah"
    end
  end

end
