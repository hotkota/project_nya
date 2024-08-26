require "./*"

VERSION = "0.0.1"

module Project_Nya
  class Main
    render = Render.new

    render.render(VERSION)
  end
end

Project_Nya::Main.new