# Ejercicio 2
# Crear la clase Animal con un atributo nombre . Agregar un método getter para el atributo
# nombre .
# Crear las clases Ave , Mamifero e Insecto . Ambas heredan de Animal .
# Crear las clases Pingüino , Paloma y Pato . Las tres heredan de Ave .
# Crear las clases Perro , Gato y Vaca . Las tres heredan de Mamifero .
# Crear las clases Mosca , Mariposa y Abeja . Las tres heredan de Insecto .
# Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de
# definir las habilidades y tipo de alimentación de cada animal.


module Habilidades
    module Volador
        def volar
        'Estoy volandooooo!'
        end

        def aterrizar
        'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
        'Estoy nadando!'
        end

        def sumergir
        'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end
end

module Alimentacion
        module Herbivoro
            def comer
            'Puedo comer plantas!'
            end
        end

        module Carnivoro
            def comer
            'Puedo comer carne!'
            end
        end
end

class Animal
    include Alimentacion
    include Habilidades
    attr_reader :nombre
        def initialize(nombre)
            @nombre=nombre
        end
end

class Ave < Animal 
end

class Mamifero < Animal
   
end

class Insecto < Animal
    
end

#3ra generacion (Animal->Insecto, Mamifero, Ave->Pinguino, paloma, pato, perro, gato, vaca, mosca, abeja, mariposa)
class Pinguino < Ave
    include Carnivoro
    include Nadador
    def volar
        "No puedo volar!"
    end
end

class Paloma < Ave
    include Volador
end

class Pato < Ave
    include Nadador
end

class Perro < Mamifero
    include Carnivoro
    include Caminante
end

class Gato < Mamifero
    include Carnivoro
    include Caminante
end

class Vaca < Mamifero
    include Herbivoro
    include Caminante
end

class Mosca < Insecto
    include Volador
end

class Mariposa < Insecto
    include Volador
    include Herbivoro
end

class Abeja < Insecto
    include Volador
end

class Gallina < Ave
    include Caminante
    include Alimentacion
    def comer
        "Como semillas y maiz!"
    end

end


pingu = Pinguino.new('pingu')
puts pingu.volar
puts pingu.nadar
puts pingu.sumergir

gallina = Gallina.new('cucu')
puts gallina.comer
puts gallina.caminar
