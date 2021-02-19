# This is my original solution
class Romanos
  def initialize
    @basic_units = [['I','V','X'],['X','L','C'],['C','D','M'],['M','','']]
  end

  def to_roman_number(number, min_mid_max)
    min = min_mid_max[0]
    mid = min_mid_max[1]
    max = min_mid_max[2]
    final_number(number, min, mid, max)
  end

  def final_number(number, min, mid, max)
    case number.to_i
    when 1..3
      return min*number.to_i
    when 4 
      return min + mid
    when 5
      return mid
    when 6..8
      return  mid + min*(number.to_i-5)
    when 9
      return min + max
    end
  end

  def toRoman(number)
    start = Time.now
    limits = 1..3999
    return puts 'Num have to be greater than 0 and smaller than 3999' if !limits.include? number
    separate_chars = number.to_s
    roman_number = ''

    for i in 1..separate_chars.length do
      magnitude = separate_chars.length-i
      roman_number = "#{roman_number}#{to_roman_number(separate_chars[i-1], @basic_units[magnitude])}"
    end

    puts "#{number}: #{roman_number}"
    finish = Time.now
    puts finish - start
    roman_number
  end
end

rom = Romanos.new
rom.toRoman(425)
rom.toRoman(341)
rom.toRoman(29)
rom.toRoman(99)
rom.toRoman(3999)
rom.toRoman(5000000)