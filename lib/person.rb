# your code goes here
# $ global variable
require "pry"

class Person
  # @@Country = "USA"
  # @@object_count = 0

  # def count
  # @@object_count +=1
  # puts @@object_count
  # end

  attr_reader :name # take out name from attr_accessor and usejust attr_reader, also init with def init
  attr_accessor :bank_account, :salary_amount, :happiness, :hygiene

  def initialize(name)
    # must init with constant amounts
    #2 ways, other wise all three must go in parameter and invoked upon creation of object
    @name = name # might be an error
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  #happiness function
  #   def happiness=(num)
  #     @happiness = num
  #     @happiness = 10 if @happiness > 10
  #     @happiness = 0 if @happiness < 0
  #    end

  def get_paid(salary_amount)
    #@bank_account = 25
    @salary_amount = salary_amount
    @bank_account += @salary_amount
    return "all about the benjamins"
  end

  def happiness
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    else
      @happiness = @happiness
    end
  end

  # the test wants me to create a hepler functin
  def hygiene
    if @hygiene < 0
      @hygiene = 0
    elsif @hygiene > 10
      @hygiene = 10
    else
      @hygiene = @hygiene
    end
  end

  def work_out
    #@happiness += 2
    #@hygiene -= 3
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def take_bath
    #return true if points greater than 7
    #@hygiene = hygiene # do i need this

    #@hygiene += 4
    self.hygiene += 4

    return "♪ Rub-a-dub just relaxing in the tub ♫"
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

  def call_friend(friend)
    #call_friend(friend)
    friend.happiness+=3
    self.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

def start_conversation(friend,topic)

   if topic == "politics"
      self.happiness -=2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"

   elsif topic == "weather"
      self.happiness +=1
    friend.happiness += 1
      "blah blah sun blah rain"

   else
       "blah blah blah blah blah"

   end

end

end
    #[Person,self].each do happiness += 3

    #@happiness +=3
  


#def call_friend(Person)
#    Person.hygiene +=3
#     @hygiene +=3
#     if Person.name == "Felix"
#         Hi Felix! It's Stella. How are you?
#     end
# end
# end
