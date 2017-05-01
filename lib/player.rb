class Player

attr_reader :player
attr_writer :player

def initialize(options)
  @player = options["player"]
end

end
