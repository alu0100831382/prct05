require './fraccionario'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
    
#Test que suma los numeros racionales
  def test_suma
    assert_equal([22,15], Fraccionario.new(2,3).suma(4,5)) 
    assert_equal([1,1], Fraccionario.new(1,2).suma(2,4)) 
  end
  
  #Test que comprueba la resta de los numeros racionales
  def test_resta
    assert_equal([1,3], Fraccionario.new(2,3).resta(1,3)) 
    assert_equal([7,6], Fraccionario.new(5,3).resta(1,2))
  end
  
  #Test que comprueba la multiplicacion
  def test_multiplicacion
    assert_equal([2,2], Fraccionario.new(2,1).multiplicar(1,2))
  end
  
  #Test que comprueba la division
  def test_division
    assert_equal([4,2], Fraccionario.new(1,2).division(1,4))
  end
end