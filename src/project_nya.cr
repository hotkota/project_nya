require "./classes/*"

VERSION = "0.0.1"

module Project_Nya
  class Main
    def initialize
      @render = Render.new
      @planet = Planet.new
    end
  end
end

# Start here
game = Project_Nya::Main.new

while true
  game.@render.main_message(game.@planet)
  gets
  game.@render.clear()
end