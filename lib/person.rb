class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name, bank_account = 25)
    @name = name
    @bank_account = bank_account
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    if points < 0
      @happiness = 0
    elsif points > 10
      @happiness = 10
    else
      @happiness = points
    end
  end

  def hygiene=(points)
    if points < 0
      @hygiene = 0
    elsif points > 10
      @hygiene = 10
    else
      @hygiene = points
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(self.hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness=(self.happiness + 2)
    self.hygiene=(self.hygiene - 3)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness=(friend.happiness + 3)
    self.happiness=(self.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness=(person.happiness - 2)
      self.happiness=(self.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness=(person.happiness + 1)
      self.happiness=(self.happiness + 1)
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end
