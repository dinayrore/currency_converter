class Currency
  attr_reader :currency_symbol, :currency_amount

  def initiaize(currency_amount, currency_code)
    @currency_amount = currency_amount
    @currency_code = currency_code
  end

  

end
