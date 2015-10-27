require './fraccionario'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def test_simple
    assert_equal("(1/2)", Fraccionario.new(1,2).to_s)
  end
end