require '/home/ubuntu/workspace/lib/fraccionario'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  
  def setup
    @origen = Fraccionario.new(1,2)
    @unidad = Fraccionario.new(2,3)
  end
  
  #Comprobando el test simple
  def test_simple
    assert_equal("(1/2)", @origen.to_s)
    assert_equal("(1/2)", Fraccionario.new(2,4).to_s)
    assert_equal("(1/2)", Fraccionario.new(3,6).to_s)
    assert_equal("(2/5)", Fraccionario.new(2,5).to_s)
    assert_equal("(2/1)", Fraccionario.new(10,5).to_s)
  end
  
  
  def test_operaciones
    assert_equal("(4/3)", (@unidad * 2).to_s)
    assert_equal("(-2/3)", (- @unidad).to_s)
    assert_equal([7,6], (@origen + @unidad))
    assert_equal("(5/2)", (@origen * 5).to_s, "Producto escalar")
    assert_equal([22,15], Fraccionario.new(2,3).suma(4,5)) 
    assert_equal([1,1], Fraccionario.new(1,2).suma(2,4)) 
    assert_equal([1,3], Fraccionario.new(2,3).resta(1,3)) 
    assert_equal([7,6], Fraccionario.new(5,3).resta(1,2))
    assert_equal([2,2], Fraccionario.new(2,1).multiplicar(1,2))

    assert_equal([4,2], Fraccionario.new(1,2).division(1,4))
  end
  
end