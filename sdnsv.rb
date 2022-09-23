class Wallet
def initialize(name,account)
@@name = name
@@account = account
end
def credit(ca)
	@@amount+=ca
end
def debit(da) 
if @@amount < da 
   puts "Insufficient Funds"
else
    @@amount-=da
end
def balance()
    puts @@amount
end

