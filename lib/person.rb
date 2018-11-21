class Person

attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

# def initialize(name,bank_account=25,happiness=8,hygiene=8)
#   @name = name
#   @bank_account = bank_account
#   @happiness = happiness
#   @hygiene = hygiene
# end

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

#this is a custom writer. A writer allows us to override instance variables
def happiness=(num)
  @happiness = num

  if num < 0
    @happiness = 0
  elsif num > 10
    @happiness = 10
  else
    @happiness = num
  end
end

def hygiene=(num)
  @hygiene = num

  if num < 0
    @hygiene = 0
  elsif num > 10
    @hygiene = 10
  else
    @hygiene = num
  end
end

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
   # hygiene = hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
 end

 def work_out
   self.happiness += 2
   self.hygiene -= 3
   return "♪ another one bites the dust ♫"
 end

 def call_friend(friend)
   self.happiness += 3
   friend.happiness += 3
   return "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"

    elsif topic == "weather"
      self.happiness +=1
      person.happiness +=1
      return "blah blah sun blah rain"

    else return "blah blah blah blah blah"
    end
  end

end

Susan = Person.new("Susan")


# rspec --f-f
