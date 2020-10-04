class Usuario
    attr_accessor :nombre, :cuentas_bancarias, :saldo

    def initialize(nombre, cuentas_bancarias=[])
        @nombre = nombre
        @cuentas_bancarias = cuentas_bancarias

    end

    def saldo_total
        total = 0
        self.cuentas_bancarias.each do |cuentas_bancarias|
        total += cuentas_bancarias.saldo
        end
        puts "El saldo total de ambas cuentas es de: $#{total}"
    end
end

class CuentaBancaria 
    attr_accessor :saldo, :nombre_banco

    def initialize(nombre_banco, numero_cuenta, saldo = 0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto_transferencia, desde, hacia)
        desde.saldo = self.saldo - monto_transferencia
        puts "El Saldo actual de la cuenta del banco #{desde.nombre_banco} es $#{desde.saldo}"
        hacia.saldo = self.saldo + (monto_transferencia * 2) 
        puts "El Saldo actual de la cuenta del banco #{hacia.nombre_banco} es $#{hacia.saldo}"
    end
end

cta1 = CuentaBancaria.new('scotiabank', 12345678, 5000)
cta2 = CuentaBancaria.new('itau', 343434, 5000)

cta1.transferir(5000,cta1,cta2)

puts cta1.saldo
puts cta2.saldo

persona1 = Usuario.new('Sebastian', [cta1,cta2])
persona1.saldo_total






