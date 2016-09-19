class Currency
  attr_accessor :currency_symbol, :currency_amount

  def initiaize(currency_symbol, currency_amount)
    @currency_symbol = currency_symbol
    @currency_amount = currency_amount
  end
end
