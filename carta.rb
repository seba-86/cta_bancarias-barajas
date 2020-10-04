
class Carta
    attr_accessor :numero, :pinta
    
    def initialize
        @numero = rand(1..13)
        @pinta = ["C", "D", "E", "T"].sample
    end

    def action()
        "El numero es #{self.numero} y la pinta es: #{self.pinta}"
    end
end



