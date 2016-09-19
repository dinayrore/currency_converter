class DifferentCurrencyCodeError < StandardError
end

class Currency
  attr_accessor :amount, :code

  def initialize(amount)
    @amount = amount
    @code = nil
  end

  def determine_code(amount)
    if amount[0] == '$'
      @code = 'USD'
      @amount = value[1..-1].to_f
    elsif amount[0] == €
      @code = 'EUR'
      @amount = value[1..-1].to_f
    elsif amount[0] == ¥
      @code = 'JPY'
      @amount = value[1..-1].to_f
    else
      puts "Invalid input. Please enter an amount in the following format: '$_._ _', '€_. _ _', OR '¥_. _ _'"
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

  def *(other)
    if @code == other.code
      Currency.new(@amount * other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "non-matching currency codes"
    end
  end
end

# yen = alt + y
# euro = alt + shift + 2
