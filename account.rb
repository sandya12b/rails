class Wallet
def initialize(nam,am)
@@nam=nam
@@amount=am
end
def credit(ca)
@@amount+=ca
end

attr_reader:name 


def debit(da) 
if @@amount < da 
puts "Insufficient Funds"
else
            @@amount-=da
        end
    end
    def balance()
    puts @@amount
    end
    def transfer(w1,w2,ta)
    if @@amount < ta
    puts "Insufficient Funds"
    else
    w1.debit(ta)
    w2.credit(ta)
    end
    end
end
$i=0 
$name=gets.chomp! 
$now=gets.chomp.to_i
wallets=Array.new
for a in 0...$now
wallets[a]=gets.chomp
wallets[a]=Wallet.new(wallets[a],1000)
end
trans=Array.new
while true
$x=0
trans[$x]=gets.chomp

if trans[$x] === 'quit'
break
end
$x=$x+1
end
while $i < trans.length
$ch=trans[$i]
case $ch
when 'credit'
       
for j in 0...$now
if wallets[j] === trans[$i+1]
  wallets[j].credit(trans[$i+2].to_f)
end
end
$i=$i+3
break

    when 'debit'
       
for j in 0...$now
if wallets[j] === trans[$i+1]
  wallets[j].debit(trans[$i+2].to_f)
end
end
$i=$i+3

break
when 'balance'
       
for j in 0...$now
if wallets[j] === trans[$i+1]
  wallets[j].balance() 
end
end
$i=$i+2

break
when 'transfer' 
       
for j in 0...$now
if wallets[j] === trans[$i+1]   
  wallets[j].transfer(trans[$i+1],trans[$i+2],trans[$i+3].to_f)
end
end
$i=$i+4
break

end
end




    
