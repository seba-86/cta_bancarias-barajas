require_relative 'carta'

class Baraja
    attr_accessor :cards

    def initialize(cards)
        @cards = []
        i = 0
        while i < 52
            cards << Carta.new(rand(1..13),["C","D","E","T"].sample).action
            i +=1 
        end
    
    end

    def barajar 
        self.cards = self.cards.shuffle
    end

    def sacar 
        self.cards = self.cards.pop
    end

    def repartir_mano
        repartir1 = []
        i = 0
        while i < 5 
        repartir1 << self.sacar
        i += 1
        end
    end

end





