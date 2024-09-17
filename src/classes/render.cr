module Project_Nya
  class Render
    def render(message : String)
      puts message
    end

    def main_message(planet)
      render("Ваша планета:

      Районы: #{planet.@districts.@districts.size}
      Торговые: #{}
      Жилые: #{}
      Производственные: #{}

      Материалы:
      Сталь:  #{planet.@resources.read_steel}
      Бетон:  #{planet.@resources.read_concrete}
      Деньги: #{planet.@resources.read_money}")
    end

    def clear
      print "\33c\e[3J"
    end
  end
end