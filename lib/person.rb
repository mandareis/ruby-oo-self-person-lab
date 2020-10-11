require "pry"

class Person
  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    if @happiness > 10
      return 10
    elsif @happiness < 0
      return 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene > 10
      return 10
    elsif @hygiene < 0
      return 0
    else
      @hygiene
    end
  end

  def happy?
    return @happiness > 7
    # return true
    # else
    #   return false
    # end
  end

  def clean?
    return @hygiene > 7
    #   return true
    # else
    #   return false
    # end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    end
    if topic == "weather"
      person.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    end
    return "blah blah blah blah blah"
  end
end
