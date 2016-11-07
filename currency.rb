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
      @amount = amount[1..-1].to_f
    elsif amount[0] == '€'
      @code = 'EUR'
      @amount = amount[1..-1].to_f
    elsif amount[0] == '¥'
      @code = 'JPY'
      @amount = amount[1..-1].to_f
    else
      "Invalid input. Please enter an amount in the following format: '$_._ _', '€_. _ _', OR '¥_. _ _'"
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
      addition = Currency.new(@amount + other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "non-matching currency codes"
    end
    return addition
  end

  def -(other)
    if @code == other.code
    subtraction = Currency.new(@amount - other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "non-matching currency codes"
    end
    return subtraction
  end

  def *(other)
    if @code == other.code
      multiplication = Currency.new(@amount * other.amount, @code)
    else
      raise DifferentCurrencyCodeError, "non-matching currency codes"
    end
    return multiplication
  end
end
