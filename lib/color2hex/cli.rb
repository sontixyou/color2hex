require 'color2hex'
require 'thor'
class Color2hexCLI < Thor
  desc "main {red} {green} {blue}", "convert {red} {green} {blue} to {hex_number}"
  def main(red, green, blue)
    input_array = input_to_array(red, green, blue)
    result = []
    input_array.each do |input|
      result << string_to_hex(input)
    end
    puts "##{result.flatten.join}"
  end

  private
  def input_to_array(red, green, blue)
    array = []
    array << red unless red.nil? || red.class != String
    array << green unless green.nil? || red.class != String
    array << blue unless blue.nil? || red.class != String

    return "数字(String)を3つ入力してください" if array.count != 3

    array
  end

  def string_to_hex(input)
    if input.class == String
      return "3桁の数字を入力してください" unless input.match(/^[0-9]{0,3}$/)
      return "0から255以下の数字で入力してください\n" if input.to_i.negative? || input.to_i > 255
    end

    decimal_to_hex(input.to_i)
  end

  def decimal_to_hex(number)
    hex_number_array = devide_decimal_by_sixteen(number)
    generate_hex_array(hex_number_array)
  end

  def devide_decimal_by_sixteen(number)
    hex_number_array = []
    while(number >= 16)
      amari = number % 16
      hex_number_array.unshift(amari)
      number = number / 16
    end
    hex_number_array.unshift(number)
  end

  def generate_hex_array(hex_number_array)
    hexes = []
    hex_number_array.each do |hex_number|
      if hex_number >= 10
        case hex_number
        when 10
          hexes << "a"
        when 11
          hexes << "b"
        when 12
          hexes << "c"
        when 13
          hexes << "d"
        when 14
          hexes << "e"
        when 15
          hexes << "f"
        end
      else
        hexes << hex_number.to_s
      end
    end
    hexes
  end
end
