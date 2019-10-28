#write your code here
def echo string
  string
end
def shout string
  string.upcase
end
def repeat string, count=2
new_string = ''
count.times do
  new_string += string + ' '
end
new_string.strip
end
def start_of_word string, count=1
  new_string = ' '
  i = 0
  while i < count
    new_string += string[i]
    i+= 1
  end
  new_string.strip
end

def first_word string
  new_string = ' '
  i = 0
  while true
    if string[i] == ' '
      break
    end
    new_string += string[i]
    i += 1
  end
new_string.strip
end
def titleize string
  string = string.split ' '
  newString = ' '
  i = 0
  string.each do |word|
    if (word == 'and' or word == 'or' or word == 'over' or word == 'the') and i != 0
      word = word.downcase
    else
      word = word.capitalize

    end
    newString += word + ' '
    i += 1
  end
  newString.strip
end
