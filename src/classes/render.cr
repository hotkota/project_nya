module Project_Nya
  class Render
    def render(message : String)
      puts message
    end

    def clear
      print "\33c\e[3J"
    end
  end
end