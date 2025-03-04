def caesar_cipher(string, key)
  stringedArray = string.chars
  coded = []
  stringedArray.each { |character|
  # Determine which set of numbers to use
  upcase = character >= "A" && character <= "Z"
  downcase = character >= "a" && character <= 'z'
  baseUpcase = 65 #'A'
  baseDowncase = 97#'a'
  encrypted = ''
  # Standardizes numbers to wrap from z to a with casing in mind
  if upcase
    encrypted = (((character.ord + key - baseUpcase) % 26) + baseUpcase).chr
  elsif downcase
    encrypted = (((character.ord + key - baseDowncase) % 26) + baseDowncase).chr
  # If not a letter a - z do nothing to keep punctuation and spaces
  else
    encrypted = character
  end
  # Pushes encryption into a the coded array
  coded.push(encrypted)
}
# Puts array in string format.
puts coded.join()
end

caesar_cipher("What a string!", 5)
caesar_cipher("What a string!", 0)
caesar_cipher("Hello", 5)
caesar_cipher("aaaa", 1)
caesar_cipher("bbbb", 0)
caesar_cipher("zzzz", 1)
caesar_cipher("aaaa", 0)