require 'minitest/autorun'

require_relative 'solution'

class SolutionTest < Minitest::Test
  def test_blank
    assert_equal true, [].blank?, 'an empty array is blank'
    assert_equal true, {}.blank?, 'an empty hash is blank'
    assert_equal true, false.blank?, 'false is blank'
    assert_equal false, true.blank?, 'true is not blank'
    assert_equal true, nil.blank?, 'nil is blank'
    assert_equal false, [' '].blank?, 'array with one element is NOT blank'
  end

  def test_blank_strings
    assert_equal true, ''.blank?, 'an empty string is blank'
    assert_equal true, ' '.blank?, 'whitespace is blank [1]'
    assert_equal true, " \n\t  ".blank?, 'whitespace is blank [2]'
  end
end
