require 'pry'

def main()
  require './currency'
  multiple_currencies = {"USD" => [], "EUR" => [], "JPY" => []}

  loop do
    puts "Please enter a monetary amount using the following format: \'$_._ _\', \'€_. _ _\', OR \'¥_. _ _\'. Press \'enter\' to stop entering values and continue to math operators."
    user_input = gets.chomp

      if user_input == ""
        break
      end

    currency = Currency.new(user_input.to_f)
    amount = currency.determine_code(user_input)
    multiple_currencies[currency.code] << currency
  end

  loop do
    puts "Would you like to add, subtract, or multiply stored values?"
    puts "You may only perform these functions with like currency codes. Press \'Y\' for \'Yes\', and \'N\' for \'No\', or hit \'enter\' to stop math operators and continue to conversions."
    user_input = gets.chomp.downcase

      if  user_input == "n" || user_input == ""
        break
      end

    loop do
      if user_input == "y"
        puts "Which currency code would you like to use with math operators?"
        print "Please enter \'USD\', \'EUR\', OR \'JPY\' to access previously stored values: "
        code = gets.chomp

        puts "Which amount would you like to use before the math operator?"
        amount = gets.chomp.to_f

        if code == "USD"
          multiple_currencies["USD"].each do |number|
              if number.amount == amount
                return number
              else
                puts "Please enter a monetary amount using the following format: \'$_._ _\', \'€_. _ _\', OR \'¥_. _ _\'."
                user_input = gets.chomp
                currency = Currency.new(user_input.to_f)
                amount = currency.determine_code(user_input)
                multiple_currencies[currency.code] << currency
              end
          end

        elsif code == "EUR"
          multiple_currencies["EUR"].each do |number|
              if number.amount == amount
                return number
              else
                puts "Please enter a monetary amount using the following format: \'$_._ _\', \'€_. _ _\', OR \'¥_. _ _\'."
                user_input = gets.chomp
                currency = Currency.new(user_input.to_f)
                amount = currency.determine_code(user_input)
                multiple_currencies[currency.code] << currency
              end
          end

        elsif code == "JPY"
          multiple_currencies["JPY"].each do |number|
              if number.amount == amount
                return number
              else
                puts "Please enter a monetary amount using the following format: \'$_._ _\', \'€_. _ _\', OR \'¥_. _ _\'."
                user_input = gets.chomp
                currency = Currency.new(user_input.to_f)
                amount = currency.determine_code(user_input)
                multiple_currencies[currency.code] << currency
              end
          end

        print "Would you like to add, subtract, or multiply stored values? Please type \'+\', \'-\', OR \'*\': "
        operators = gets.chomp
          if operators == "+"
            print "What value would you like to use with your math operator? "
            other = gets.chomp.to_f
              if number == other
            +(other)
            return addition
          if operators == "-"
            -(other)
          if operators == "*"
            *(other)
    end
  end
  require './currency_converter'
  conversions = []
  loop do
    puts "Which stored currency code would you like to convert from?"
    print "Please enter \'USD\', \'EUR\', OR \'JPY\' to access previously stored values: "
    code = gets.chomp

      if code == ""
        break
      end

    puts "Which amount would you like to use?"
    amount = gets.chomp.to_f
      if code == "USD"
        multiple_currencies["USD"].each do |number|
            if number.amount == amount
              return number
            end
        puts "Please enter a monetary amount using the following format: \'$_._ _\', \'€_. _ _\', OR \'¥_. _ _\'."
        user_input = gets.chomp
            if user_input == ""
              break
            end
          currency = Currency.new(user_input.to_f)
          amount = currency.determine_code(user_input)
          multiple_currencies[currency.code] << currency
        end
      elsif code == "EUR"
        multiple_currencies["EUR"].each do |number|
            if number.amount == amount
              return number
            end
        puts "Please enter a monetary amount using the following format: \'$_._ _\', \'€_. _ _\', OR \'¥_. _ _\'."
        user_input = gets.chomp
              if user_input == ""
                break
              end
          currency = Currency.new(user_input.to_f)
          amount = currency.determine_code(user_input)
          multiple_currencies[currency.code] << currency
        end
      elsif code == "JPY"
        multiple_currencies["JPY"].each do |number|
            if number.amount == amount
              return number
            end
        puts "Please enter a monetary amount using the following format: \'$_._ _\', \'€_. _ _\', OR \'¥_. _ _\'."
        user_input = gets.chomp
              if user_input == ""
                break
              end
          currency = Currency.new(user_input.to_f)
          amount = currency.determine_code(user_input)
          multiple_currencies[currency.code] << currency
        end
      else
        raise UnknownCurrencyCodeError, "currency code not found"
      end
    puts "What new monetary value would you like to convert to?"
    print "Please enter \'USD\', \'EUR\', OR \'JPY\': "
    new_value = gets.chomp
    converted = conversion(current, new_value)
    conversions << converted
  end
  puts multiple_currencies
  puts conversions
end



if __FILE__ == $PROGRAM_NAME
main
end

#yen = alt + y
#euro = alt + shift + 2
