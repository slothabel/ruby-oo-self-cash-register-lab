require 'pry'
class CashRegister

attr_accessor :total, :discount, :items

def initialize(discount=0)
    @total = 0 #total begins at 0
    @discount = discount #the discount being passed = the disc local variable
    @items = []
end

def add_item(title, price, quantity=1)
@total += price * quantity
quantity.times do @items << title
end
end

def apply_discount
    if @discount != 0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        "After the discount, the total comes to $#{self.total}."
    else
        "There is no discount to apply."
        #binding.pry
    end 
end

def void_last_transaction
self.total[-1]
end



end