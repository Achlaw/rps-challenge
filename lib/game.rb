class Game

attr_reader :player

def initialize(session)
  @player = session["player"]
end

end
