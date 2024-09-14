module Project_Nya
  # Все виды построек
  module Buildings

    class Factory
      def initialize(ID : UInt16)
        @name = "Производственные районы"
        @ID = ID
      rescue
        puts "Ошибка в Buildings::Factory"
      end
    end

    class Skyscrapers
      def initialize(ID : UInt16)
        @name = "Жилые кварталы"
        @ID = ID
      rescue
        puts "Ошибка в Buildings::Skyscrapers"
      end
    end

    class Commercial
      def initialize(ID : UInt16)
        @name = "Торговые районы"
        @ID = ID
      rescue
        puts "Ошибка в Buildings::Commercial"
      end
    end
  end
end