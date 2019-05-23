module Formula
    def perimetro

        perim = 2*(self.largo + self.ancho)
        puts "Perimero = #{perim}"
    end

    def area
        ar = self.largo*self.ancho
        puts "Area = #{ar}"
    end
end

#======== CREANDO OTRA CLASE =========

    class Rectangulo
        include Formula
        attr_accessor :largo, :ancho
        def initialize(largo, ancho)
            @largo = largo
            @ancho = ancho
        end

        def lado
          puts "El largo es de #{largo}, el ancho es de #{ancho}"
        end
    end

    
class Cuadrado
    include Formula
    attr_reader :largo, :ancho
    def initialize(largo, ancho)
        @largo = largo
        @ancho = ancho
    end

    def lados
        puts "El largo es de #{largo}, el ancho es de #{ancho}"
    end
end


res_cuadrado = Cuadrado.new(5,5)
res_cuadrado.perimetro
res_cuadrado.area

res_rectangulo = Cuadrado.new(5,5)
res_rectangulo.perimetro
res_rectangulo.area