module Account
class Wallet
def initialize(name,amount)
@name=name
@amount=amount
end
def wname
@name
end
def wamount
@amount
end

def credit(ca)

@amount+=ca

# puts @amount

end
def debit(w,da)
if w.wamount < da 
puts "Insufficient Funds"
 @amount=@amount-da
else
# puts @amount
            @amount=@amount-da
        end
    end
    def balance()
    puts @amount
    end
    
end
end

module Tes include Account
# Input
$i=0
$x=0
$name=gets.chomp!
$now=gets.chomp.to_i
$wallets=Array.new 
for a in 0...$now 
$wallets[a]=gets.chomp
$wallets[a]=Wallet.new($wallets[a],1000) 
end
$trans=Array.new
while true 
$trans[$x]=gets.chomp
if $trans[$x] === 'quit'
break
end
$x=$x+1
end





$len=$trans.length

while $i < $len
if $trans[$i] === 'credit'
for j in 0...$now
if $wallets[j].wname === $trans[$i+1]


 $wallets[j].credit($trans[$i+2].to_f)

end
end
$i=$i+3 


    elsif $trans[$i] === 'balance'
    for j in 0...$now
if $wallets[j].wname === $trans[$i+1]
  $wallets[j].balance()
end
end
$i=$i+2

elsif $trans[$i] === 'debit'
for j in 0...$now
if $wallets[j].wname === $trans[$i+1]


 $wallets[j].debit($wallets[j],$trans[$i+2].to_f)

end
end
$i=$i+3

elsif $trans[$i] === 'transfer'
for j in 0...$now
if $wallets[j].wname === $trans[$i+1]
$wallets[j].debit($wallets[j],$trans[$i+3].to_f) 
end
if $wallets[j].wname === $trans[$i+2] 
$wallets[j].credit($trans[$i+3].to_f)
end


end
$i=$i+4
elsif $trans[$i] ==='quit'
 puts "Thank You"
 break 
   


end
 
end

end





