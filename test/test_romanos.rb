require "minitest/autorun"
require_relative "../romanos"

class TestRomanos < Minitest::Test

  def setup
    @romanos = Romanos.new
  end

  def test_III
    result = @romanos.toRoman(3)
    assert_equal result, 'III'
  end

  def test_IV
    result = @romanos.toRoman(4)
    assert_equal result, 'IV'
  end

  def test_IX
    result = @romanos.toRoman(9)
    assert_equal result, 'IX'
  end

  def test_LVIII
    result = @romanos.toRoman(58)
    assert_equal result, 'LVIII'
  end

  def test_MCMXCIV
    result = @romanos.toRoman(1994)
    assert_equal result, 'MCMXCIV'
  end

  def test_MMMCMXCIX
    result = @romanos.toRoman(3999)
    assert_equal result, 'MMMCMXCIX'
  end

  def test_out_of_limits
    result = @romanos.toRoman(0)
    assert_equal result, nil

    result = @romanos.toRoman(4000)
    assert_equal result, nil
  end

end