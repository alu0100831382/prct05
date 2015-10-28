require './fraccionarios'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  
  def test_simple
    assert_equal("(1/2)", Fraccionario.new(2,4).to_s)
  end
  
  def test_suma
    assert_equal([22,15], Fraccionario.new(2,3).suma(4,5)) 
    assert_equal([1,1], Fraccionario.new(1,2).suma(2,4)) 
  end
  
  def test_multiplicacion
    assert_equal([1,1], Fraccionario.new(2/1).multi(1,2))
  end
  
end