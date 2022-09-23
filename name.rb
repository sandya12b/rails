name_my = "sandhya"
puts"hello"
puts "hello my name is " + name_my

my_hello =" SandHYa"
puts my_hello.downcase
puts my_hello.strip
puts my_hello.length
puts my_hello.include? "san"
puts my_hello[4]
puts my_hello[0,3]
puts my_hello.index("d")
puts 2+2
puts 2*3
puts 2**3
puts 4/2
num =20.9
puts Math.sqrt(36)
puts Math.log(1)
puts 14/2.5
#getting user input
=begin puts "enter your name:"
nam_e = gets.chomp()
puts "age is"
age = gets.chomp
puts ("my name is " + nam_e)
puts ("my_age is" + age)
puts ("hello my name is  "  + nam_e + ", my age is" + age)

#calculator
puts "enter a number"
num1 =gets.chomp
puts "enter another number"
num2 =gets.chomp
puts num1.to_i+num2.to_i

puts " enter name"
a = gets.chomp.to_s
puts "another name"
b = gets.chomp.to_s
puts a.to_s + b.to_s
=end
#arrays in ruby
friends = Array["kelvin","kari","oscar"]
puts friends
puts friends[0]
puts friends[0 ,2]
puts friends.sort()
puts friends.reverse()


#hashes key and value pair
keys ={
	"state" =>"A.p", "name" => "sandhya",  "subject" => "ruby" 
}
puts keys

#methods
def sayhii(name,age)
	puts ("hello" +  name  + " , you are " + age.to_s)
end

sayhii("santhu",19)


def hello()
	puts "sayhii"
end	
hello()

def hello(name ,age)
	puts ("hello" + name + ", you are " + age.to_s)
end

hello("sandy",21)

#return statement
def cube(num)
	return  num * num * num
	puts 
end
puts cube(3)


#conditions
if 10 === 4
	puts "true"
elsif
	puts "false"
else 
	puts "no more"
end	

#basic better calculator
puts "enter a number"
num1 = gets.chomp().to_f
puts "enter operator"
op = gets.chomp()
puts "enter another number"
num2 = gets.chomp().to_f

if op == "+"
	puts (num1 + num2)
elsif op == "-"
    puts (num1 - num2)	
elsif op == "*"
puts (num * num2)
else
	puts "nothing else"
end

#case exp
=begin def get_day_name(day)
	day_name =""

	if day == "mon"
		day_name ="monday"

		case day
		when "mon"
		 day_name = "monday"
		when "tue"
			day_name = "tuesday"
		else
			puts "invalid day"
		end

         return  "get_day_name"
        
=end

#while condition

index = 1
while index <= 5
	puts index
	index = index + 1
end



#for loop
for index in 0..5
	puts index
end
6.times do |index|
	puts index
end