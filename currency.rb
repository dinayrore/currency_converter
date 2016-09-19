class DifferentCurrencyCodeError < StandardError
end

class Currency
  attr_accessor :amount, :code

  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def determine_code(value)
    if value[0] == '$'
      @code = 'USD'
      @amount = value[1..-1].to_f
    elsif value[0] == €
      @code = 'EUR'
      @amount = value[1..-1].to_f
    else
      @code = 'JPY'
      @amount = value[1..-1].to_f
    end
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
      raise DifferentCurrencyCodeError, "wrong currency types"
    end
  end

  def -(other)
    if @code == other.code
      Currency.new(@amount - other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "non-matching currency codes"
    end
  end

  def *(other)
    if @code == other.code
      Currency.new(@amount * other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "non-matching currency codes"
    end
  end
end
