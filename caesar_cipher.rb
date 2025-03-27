def caesar_cipher(string, key)
  stringed_array = string.chars
  coded = []
  stringed_array.each do |character|
    # Determine which set of numbers to use
    # upcase = character >= 'A' && character <= 'Z'
    upcase = character.between?('A', 'Z')
    # downcase = character >= 'a' && character <= 'z'
    downcase = character.between?('a', 'z')
    base_upcase = 65 # 'A'
    base_downcase = 97 # 'a'
    # Standardizes numbers to wrap from z to a with casing in mind
    encrypted = if upcase
                  (((character.ord + key - base_upcase) % 26) + base_upcase).chr
                elsif downcase
                  (((character.ord + key - base_downcase) % 26) + base_downcase).chr
                # If not a letter a - z do nothing to keep punctuation and spaces
                else
                  character
                end
    # Pushes encryption into a the coded array
    coded.push(encrypted)
  end
  # Puts array in string format.
  puts coded.join
end

caesar_cipher('What a string!', 5)
caesar_cipher('What a string!', 0)
caesar_cipher('Hello', 5)
caesar_cipher('aaaa', 1)
caesar_cipher('bbbb', 0)
caesar_cipher('zzzz', 1)
caesar_cipher('ZZZZ', 1)
caesar_cipher('AAAA', 0)
caesar_cipher('WHAT  AN  EXTREMELY  LONG  AND  COMPLEX  LINE  TO  TRANSLATE  WITH  TWO  SPACES  BETWEEN  EACH  WORD', 5)
