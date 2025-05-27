require "colorize"

class  Billing
  attr_accessor :amount

  FIXED_TAX_RATE=0.01
  
  def initialize(amount)
    @amount=amount
  end

  def apply_discount(percent: 0) # default arguments
      discount_amount=@amount*percent/100.0
      @amount-=discount_amount
      self
  end

  def apply_tax ## Methods
     @amount+=@amount*FIXED_TAX_RATE
     self ## method chaining
  end
  def total
     @amount.round(2)
  end
end
puts "Enter amount:".blue
amount=gets.chomp.to_f
discount_percent=rand(1..10)
bill=Billing.new(amount).apply_discount(percent: discount_percent).apply_tax
puts "Discount applied: #{discount_percent}%".black
puts "Total bill amount with 1% tax #{bill.total}".blue
