require 'pry'

def main()
  require_relative 'currency.rb'
  multiple_currencies = {"USD" => [], "EUR" => [], "JPY" => []}
  loop do
    puts "Please enter a monetary amount using the following format: \'$_._ _\', \'€_. _ _\', OR \'¥_. _ _\'."
    user_input = gets.chomp
      if user_input == ""
        break
      end
    currency = Currency.new(user_input.to_f)
    amount = currency.determine_code(user_input)
    multiple_currencies[currency.code] << currency
  end
  require_relative 'currency_converter.rb'
  conversions = []
  loop do
binding.pry
    puts "Which stored value would you like to convert from?"
    print "Please enter \'USD\', \'EUR\', OR \'JPY\' to access previously stored values: "
    value = gets.chomp

      if value == ""
        break
      end

    puts "Which amount would you like to use?"
    current = gets.chomp.to_f
binding.pry
      if value == "USD"
        multiple_currencies["USD"].each do |amount|
            if amount == current
              return current
            end
        end
      elsif value == "EUR"
        multiple_currencies["EUR"].each do |amount|
            if amount == current
              return current
            end
        end
      elsif value == "JPY"
        multiple_currencies["JPY"].each do |amount|
            if amount == current
              return current
            end
        end
      else
        currency = Currency.new(user_input.to_f)
        amount = currency.determine_code(user_input)
        multiple_currencies[currency.code] << currency
      end
binding.pry
    puts "What new monetary value would you like to convert to?"
    print "Please enter \'USD\', \'EUR\', OR \'JPY\': "
    new_value = gets.chomp
    converted = conversion(current, new_value)
    conversions << converted
  end
binding.pry
  puts multiple_currencies
  puts conversions
end



if __FILE__ == $PROGRAM_NAME
main
end

#yen = alt + y
#euro = alt + shift + 2
