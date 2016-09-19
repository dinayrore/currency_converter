require_relative 'currency.rb'

multiple_currencies = []

loop do
  puts "Please enter a monetary amount: "
  user_input = gets.chomp.to_f
  currency = Currency.new(user_input)
  code = currency.determine_code(user_input)
  multiple_currencies << currency
  if user_input == ""
    break
  end
end



require_relative 'currency_converter.rb'
