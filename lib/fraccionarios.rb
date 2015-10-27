require './gcd'

class Fraccionario
    
    attr_reader :n, :d
    
    def initialize(n,d)
        @n, @d = n, d
    end
    
    def to_s
        "(#{@n}/#{@d})"
    end
end