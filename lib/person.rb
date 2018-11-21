class Person
  attr_reader :name, :happiness, :hygiene, :bank_account
  attr_writer :bank_account

  def initialize(name)
    @name = name
    @hygiene = 8
    @happiness = 8
    @bank_account = 25
  end

#Writer (allows us to overwrite instance variable)
  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num <0
      @happiness = 0
    else
      @happiness = num
    end
  end

  #Writer (allows us to overwrite instance variable)

  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num <0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def happy?
    # if @happiness > 7
    #   return true
    # end
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
    self.hygiene += 4 #not @hygiene += 4 due to bug in rspec
    return  "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return  "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
  [friend, self].each {|o| o.happiness += 3 }
  "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
   objects = [self, person]
   if topic == "politics"
     objects.each { |o| o.happiness -= 2}
     first, second = ["partisan", "lobbyist"]
   elsif topic == "weather"
     objects.each { |o| o.happiness += 1}
     first, second = ["sun", "rain"]
   end
     first ||= "blah"
     second ||= "blah"
     base_string = "blah blah #{first} blah #{second}"
   end




end
