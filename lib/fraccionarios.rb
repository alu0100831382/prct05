require './gcd'

class Fraccionario
    
    attr_reader :n, :d
    
    #Inicializas las variables
    def initialize(n,d)
        @n, @d = reducir(n, d)
    end
    
    #Metodo que devuelve la representacion
    def to_s
        "(#{@n}/#{@d})"
    end
    
    #Metodo para calcular el minimo comun multiplo
    def lcm(a, b)
		a, b = a.abs, b.abs
		(a / gcd(a, b)) * b
	end
	
    #Metodo para reducir la fraccion
    def reducir(n, d)
        aux = gcd(n, d)
        n = n / aux
        d = d / aux
        return n, d
    end
    
    
    
end