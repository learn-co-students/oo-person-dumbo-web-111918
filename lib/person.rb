class Person
	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	attr_reader :name, :happiness, :hygiene
	attr_accessor :bank_account

	def happiness=(happiness)
		if happiness > 10
			@happiness = 10
		elsif happiness < 0
			@happiness = 0
		else
			@happiness = happiness
		end
	end

	def hygiene=(hygiene)
		if hygiene > 10
			@hygiene = 10
		elsif hygiene < 0
			@hygiene = 0
		else
			@hygiene = hygiene
		end
	end

	def clean?
		@hygiene > 7
	end

	def happy?
		@happiness > 7
	end

	def get_paid(money)
		@bank_account += money
		"all about the benjamins"
	end

	def take_bath
		self.hygiene=@hygiene+4

		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene=@hygiene-3
		self.happiness=@happiness+2

		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness=@happiness+3
		friend.happiness=friend.happiness+3
		"Hi #{friend.name}! It's #{@name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			self.happiness=@happiness-2
			person.happiness=person.happiness-2
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness=@happiness+1
			person.happiness=person.happiness+1
			"blah blah sun blah rain"
		elsif topic == "programming"
			"blah blah blah blah blah"
		end
	end
end