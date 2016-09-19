class DifferentCurrencyCodeError < StandardError
end

class Currency
  attr_accessor :amount, :code

  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def ==(other)
    self.amount == other.amount && self.code == other.code
  end

  def !=(other)
    self.amount != other.amount || self.code != other.code
  end

  def +(other)
    if @code == other.code
      Currency.new(@amount + other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "non-matching currency codes"
    end
  end

  def -(other)
    if @code == other.code
      Currency.new(@amount - other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "non-matching currency codes"
    end
  end


end
