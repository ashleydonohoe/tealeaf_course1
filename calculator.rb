require 'pry'

def say(msg)
	puts "---------- #{msg} ----------"
end

say "What's the first number?"
num1 = gets.chomp

say "What's the second number?"
num2 = gets.chomp

say "1) Add 2) Subtract 3) Multiply 4) Divide"
operator = gets.chomp

#binding.pry 
#put the binding right before the error

if operator == '1'
	result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
else
  result = num1.to_f / num2.to_f
end

puts "The result is #{result}!"