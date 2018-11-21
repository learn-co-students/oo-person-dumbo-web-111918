require "pry"

class Person

	attr_reader (:name)
	attr_accessor(:bank_account, :happiness, :hygiene)

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

################################################IMPORTANT##########################################
## => writer(Allows us to overwrite instance variables)
	def happiness=(points)
		if points > 10
			@happiness = 10
		elsif points < 0
			@happiness = 0
		else
			@happiness = points
		end
	end

	def hygiene=(points)
		if points > 10
			@hygiene = 10
		elsif points < 0
			@hygiene = 0
		else
			@hygiene = points
		end
	end

	def happy?
		@happiness > 7
	end

	def clean?
		@hygiene > 7
	end

	def get_paid(amount)
		@bank_account += amount
		return "all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
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

	def start_conversation(friend, topic)
		if topic == "politics"
			self.happiness -= 2
			friend.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness += 1 
			friend.happiness += 1
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"
		end
	end
end

alex = Person.new("alex")
jack = Person.new("jack")
nick = Person.new("nick")

nick.get_paid(100000)