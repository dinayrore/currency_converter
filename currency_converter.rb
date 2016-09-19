class Currency
  attr_accessor :currency_symbol, :currency_amount, :currency_code

  def initialize(currency_symbol, currency_amount, currency_code)
    @currency_symbol = currency_symbol
    @currency_amount = currency_amount
    @currency_code = currency_code
  end


end
