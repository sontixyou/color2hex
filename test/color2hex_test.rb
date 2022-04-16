require "minitest/autorun"
require "./lib/color2hex/cli"

class Color2hexTest < Minitest::Test
  def test_color2hex
    assert Color2hex
  end

  # def test_input_to_array
  #   assert_equal(Color2hex::CLI.input_to_array(1111, 1111, 1111), "数字(String)を3つ入力してください")
  #   assert_equal(Color2hex::CLI.input_to_array("111", "111", "111"), ["111", "111", "111"])
  # end

  # def test_string_to_hex
  #   # 文字列で3桁の数字でない場合
  #   assert_equal(Color2hex::CLI.string_to_hex("aaaaaaa"), "3桁の数字を入力してください")
  #   assert_equal(Color2hex::CLI.string_to_hex("1111111"), "3桁の数字を入力してください")
  #   assert_equal(Color2hex::CLI.string_to_hex("111aaaa"), "3桁の数字を入力してください")
  #   assert_equal(Color2hex::CLI.string_to_hex("aaa1111"), "3桁の数字を入力してください")
  #   assert_equal(Color2hex::CLI.string_to_hex("-100"), "3桁の数字を入力してください")

  #   # 数字で0から255までの範囲でない数字の場合
  #   assert_equal(Color2hex::CLI.string_to_hex("9999"), "3桁の数字を入力してください")
  #   assert_equal(Color2hex::CLI.string_to_hex("999"), "0から255以下の数字で入力してください\n")

  #   # 文字列で3桁の数字であること
  #   assert_equal(Color2hex.string_to_hex("111"), ["6", "f"])
  #   assert_equal(Color2hex.string_to_hex("1"), ["1"])
  # end


  # def test_decimal_to_hex
  #   assert_equal(Color2hex::CLI.decimal_to_hex(1), ["1"])
  #   assert_equal(Color2hex::CLI.decimal_to_hex(15), ["f"])
  #   assert_equal(Color2hex::CLI.decimal_to_hex(16), ["1", "0"])
  #   assert_equal(Color2hex::CLI.decimal_to_hex(255), ["f", "f"])
  # end

  # def test_main
  #   assert_equal(Color2hex::CLI.main("111", "111", "111"), "#6f6f6f")
  # end
end
