#write your code here
def add num1, num2
  num1 + num2
end
def subtract num1, num2
  num1 - num2
end
def sum array
  sum = 0
  array.each do |num|
    sum += num
  end
  sum
end
def multiply *p
  product = 1
  p.each do |num|
product *= num
  end
  product
end
def power num, power
  num**power
end
def factorial
end

puts multiply(5,2,3)
