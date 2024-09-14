require "./buildings.cr"

module Project_Nya
  class Planet
    def initialize
      @resources = Resources.new
      @districts = Districts.new
      @counter_ID = 0
    end

    # Все районы на планете
    class Districts
      def initialize
        @districts = [] of Buildings::Factory | Buildings::Skyscrapers | Buildings::Commercial
      end

      def build(type : UInt8)
        case type
        when 1
          @districts << Buildings::Factory.new(@counter_ID)
          @counter_ID = @counter_ID + 1
        when 2
          @districts << Buildings::Skyscrapes.new(@counter_ID)
          @counter_ID = @counter_ID + 1
        when 3
          @districts << Buildings::Commercial.new(@counter_ID)
          @counter_ID = @counter_ID + 1
        else
          puts "Неверное число"
        end

        rescue
          puts "Ошибка в Districts.build"
        end
      end

      def list
        @districts
      end
    end

    # Базовые ресурсы
    class Resources
      def initialize
        @steel = 0
        @concrete = 0
      end

      # Количество ресурсов
      def read_steel : Int32
        @steel
      end
      def read_concrete : Int32
        @concrete
      end

      # Изменение ресурсов
      def change_steel(delta : Int32)
        @steel = @steel + delta
      end
      def change_concrete(delta : Int32)
        @concrete = @concrete + delta
      end

    end
  end
end