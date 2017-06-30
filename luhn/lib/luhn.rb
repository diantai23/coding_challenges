module Luhn
  def self.is_valid?(number)
    @number = number
    sum = 0
    digits = number.to_s.chars.map(&:to_i)
    digits.each_with_index do |digit, index|
      if index%2 == 0 ## if even
        digit = digit * 2
        if digit >= 10
          digit = digit - 9
        end
      end
      sum += digit
    end

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end

puts Luhn.is_valid?(377681478627336)
