require_relative 'currency.rb'

class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverter
  attr_accessor :current, :converted

  def initialize()
    @conversion_rates_usd = { "USD": 1.0, "EUR": 0.89472, "JPY": 101.866 }
    @conversion_rates_eur = { "EUR": 1.0, "USD": 1.11766, "JPY": 113.855 }
    @conversion_rates_jpy = { "JPY": 1.0, "EUR": 0.00879, "USD": 0.00982 }
  end

  def conversion(current, converted)
    @current = current
    @converted = converted
    converted = Currency.new(current.amount * @conversion_rates_usd["USD"], "EUR", "JPY")
    converted = Currency.new(current.amount * @conversion_rates_usd["EUR"], "USD", "JPY")
    converted = Currency.new(current.amount * @conversion_rates_usd["JPY"], "EUR", "USD")
  end




end
