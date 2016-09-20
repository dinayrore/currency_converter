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

  def conversion(current, code)
    @current = current
    @converted = converted
    if code == "USD"
      convert_usd_to_usd = (current.amount * @conversion_rates_usd["USD"])
      convert_usd_to_eur = (current.amount * @conversion_rates_usd["EUR"])
      convert_usd_to_jpy = (current.amount * @conversion_rates_usd["JPY"])
    elsif code == "EUR"
      convert_eur_to_eur = (current.amount * @conversion_rates_eur["EUR"])
      convert_eur_to_usd = (current.amount * @conversion_rates_eur["USD"])
      convert_eur_to_jpy = (current.amount * @conversion_rates_eur["JPY"])
    elsif code == "JPY"
      convert_jpy_to_jpy = (current.amount * @conversion_rates_jpy["JPY"])
      convert_jpy_to_usd = (current.amount * @conversion_rates_jpy["USD"])
      convert_jpy_to_eur = (current.amount * @conversion_rates_jpy["EUR"])
    else
      raise UnknownCurrencyCodeError, "currency code not found"
    end
  end
end
