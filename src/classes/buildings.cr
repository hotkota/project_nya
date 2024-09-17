module Project_Nya
  # Все виды построек
  module Buildings

    class Factory
      def initialize(id : UInt16)
        @name = "Производственные районы"
        @description = "Производит сталь и бетон"
        @ID = id
      rescue
        puts "Ошибка в Buildings::Factory"
      end
    end

    class Skyscrapers
      def initialize(id : UInt16)
        @name = "Жилые кварталы"
        @description = "Дает дом для рабочих"
        @ID = id
      rescue
        puts "Ошибка в Buildings::Skyscrapers"
      end
    end

    class Commercial
      def initialize(id : UInt16)
        @name = "Торговые районы"
        @description = "Добывает деньги"
        @ID = id
      rescue
        puts "Ошибка в Buildings::Commercial"
      end
    end
  end
end