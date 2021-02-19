# @param {Integer} num
# @return {String}
def int_to_roman(num)
    
    def to_roman_number(number, min_mid_max)
        min = min_mid_max[0]
        mid = min_mid_max[1]
        max = min_mid_max[2]
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
    
    limits = 1..3999
    return puts 'Num have to be greater than 0 and smaller than 3999' if !limits.include? num
    
    basic_units = [['I','V','X'],['X','L','C'],['C','D','M'],['M','','']]
    
    roman_number = ''

    for i in 1..num.to_s.length do
        magnitude = num.to_s.length-i
        roman_number = "#{roman_number}#{to_roman_number(num.to_s[i-1], basic_units[magnitude])}"
    end
    
    roman_number
end