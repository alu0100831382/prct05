require './fraccionario'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  
  #Test simple
  def test_simple
    assert_equal("(1/2)", Fraccionario.new(2,4).to_s)
    assert_equal("(1/2)", Fraccionario.new(3,6).to_s)
    assert_equal("(2/5)", Fraccionario.new(2,5).to_s)
    assert_equal("(2/1)", Fraccionario.new(10,5).to_s)
  end
end