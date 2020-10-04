require_relative 'carta'

class Baraja

    attr_accessor :cartas

    def initialize
        @cartas =[]
        i = 0
        while i < 52
        cartas << Carta.new(rand(1..13),["C","D","E","T"].sample)
        i +=1 
        end
    end
       
    def barajar 
        self.cartas = cartas.shuffle
    end

    def sacar 
        self.cartas = cartas.pop
    end

    def repartir_mano
        repartir1 = []
        i = 0
        while i < 5 
        repartir1 << self.cartas
        i += 1
        end
    end
        
end

prueba = Baraja.new
prueba.barajar
prueba.sacar
prueba.repartir_mano