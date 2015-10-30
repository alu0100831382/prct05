require './fraccionario'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  
  #Test simple
  def test_simple
    assert_equal("(1/2)", Fraccionario.new(2,4).to_s)
  end
end