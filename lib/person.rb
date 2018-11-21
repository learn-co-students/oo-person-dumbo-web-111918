# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account


  def initialize (name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    #binding.pry
 end

#Writer: allows us to overwrite instance variable
 def happiness=(happiness)
   if happiness >= 10
     @happiness = 10
   elsif happiness < 0
      @happiness = 0
    else
     @happiness = happiness
   end
 end

  def hygiene=(hygiene)
    if hygiene >= 10
      @hygiene = 10
    elsif hygiene < 0
       @hygiene = 0
     else
      @hygiene = hygiene
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
     num = self.hygiene + 4
     self.hygiene=(num)
     return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3)
    self.happiness=(@happiness += 2)
    return "♪ another one bites the dust ♫"
  end
end

def call_friend(person)

end
