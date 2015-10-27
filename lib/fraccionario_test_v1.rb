require './fraccionarios'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
  def test_simple
    assert_equal("(1/2)", Fraccionario.new(2,4).to_s)
  end
end