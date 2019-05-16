class Alumno
    def initialize(nombre, *notas)
        @nombre = nombre
        @notas = notas.map{|notas|}
        
    end
    
    #Aqui creo el metodo de clase
    def self.read_file(filename = "notas.txt")
        alumnos = []
        data = []
        File.open('notas.txt', 'r') { |file| data = file.readlines }
        data.each do |alumno|
            alumnos << Alumno.new(*alumno.split(', '))
        
        end
    end
end

todos_los_alumnos = Alumno.read_file #Creo una variable la cual llama a la clase y despues al metodo de clase

puts todos_los_alumnos

