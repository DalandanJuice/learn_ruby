#write your code here
def translate word
  new_word = ''
  words = word.split ' '

  if words.length > 1
    words.each do |w|
      if !consonant? w[0]
        w = w + 'ay'
      else
        w  = moveConsonants w
      end
      new_word += w + ' ' 
    end
  else
    if !consonant? word[0]
      new_word = word + 'ay'
    else
      new_word = moveConsonants word
    end
  end
  new_word.strip
end

def moveConsonants word
  new_word = ' '
  consonants = ''
  i = 0
  if consonant? word[0] and  word[1] == 'q' and word[2] == 'u'
    i = 3
    consonants = word[0] + word[1] + word[2]
  elsif consonant? word[0] and  consonant? word[1] and  consonant? word[2]
      i = 3
      consonants = word[0] + word[1] + word[2]
  elsif consonant? word[0] and  consonant? word[1] 
      i = 2
      consonants = word[0] + word[1]
  elsif word[0] == 'q' and word[1] == 'u'
      i = 2
      consonants = word[0] + word[1]  
  else
      i = 1
      consonants = word[0]
  end
  while i < word.length
    new_word += word[i]
    i+=1
  end
  new_word += consonants + 'ay'
  new_word.strip
end
def consonant? letter
  if letter == 'a' or letter == 'e' or letter == 'i'or
    letter =='o' or letter == 'u'
    return false
  else
    return true
  end
end
