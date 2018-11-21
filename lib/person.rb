class Person
  attr_reader :name
  attr_accessor :bank_account


  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

#happiness reader
  def happiness
    @happiness
  end

  #happiness setter or writer
  def happiness=(happiness)
    if happiness < 10 && happiness > 0
    @happiness = happiness
  elsif happiness >= 10
    @happiness = 10
  elsif happiness <= 0
    @happiness = 0
    end
  end

#hygiene reader
  def hygiene
    @hygiene
  end

  #hygiene setter or writer
  def hygiene=(hygiene)
    if hygiene < 10 && hygiene > 0
        @hygiene = hygiene
      elsif hygiene >= 10
          @hygiene = 10
      elsif hygiene <= 0
          @hygiene = 0
    end
  end
##############################  METHODS  ####################################

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    # if hygiene > 10
    #   @hygiene = 10
    # end
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
      return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -=2
      person.happiness -=2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    elsif topic != "weather" || topic != "politics"
      return "blah blah blah blah blah"
    end

  end

end
