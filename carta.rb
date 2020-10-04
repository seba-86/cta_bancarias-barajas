
class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta=[])
        @numero = numero
        @pinta = pinta
    end

end
Carta.new(rand(1..13),["C","D","E","T"].sample)


