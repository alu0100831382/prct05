require './gcd'

class Fraccionario
    
    attr_reader :n, :d
    
    #Inicializas las variables
    def initialize(n,d)
        @n, @d = reducir(n, d)
    end
    
    #Metodo que devuelve
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
    
    #Metodo que suma los dos numeros racionales
    def suma(n, d)
        if(@d ==d)
           @n += n
           @n, @d = reducir(@n, @d)
        else
            new_d = mcm(@d, d)
            new_n = ((new_d / @d) *@n ) + ((new_d / d) *n )    
            @n, @d = reducir(new_n,new_d)
        end
        return @n,@d
    end
    
    #Metodo que resta los dos numeros racionales
    def resta(n, d)
        if(@d == d)
            @n -= n
            @n,@d = reducir(@n, @d)
        else
            new_d = mcm(@d, d)
            new_n = ((new_d / @d) *@n ) - ((new_d / d) *n )    
            @n, @d = reducir(new_n, new_d)
        end
        return @n,@d
    end
    
    #Metodo que multiplica los dos numeros racionales
    def multiplicar(n, d)
        n, d = reducir(n, d)
        
        @n *= n
        @d *= d
        
        reducir(@n, @d)
        return @n, @d
    end
    
    #Metodo que divide los dos numeros racionales
    def division(n, d)
        n, d = reducir(n, d)
        
        @n *= d
        @d *= n
        
        reducir(@n, @d)
        return @n, @d
    end
    
    #Sobrecarga de operadores
    def *(value)
        Fraccionario.new(@n * value, @d)
    end
    
    def -@
        Fraccionario.new(@n * -1, @d)
    end
    
    def +(other)
        Fraccionario.new(@n, @d).suma(other.n, other.d) 
    end
    
    
    
end