def decode_char(char)
  code = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
           '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
           '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
           '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
           '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
           '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
           '-.--' => 'Y', '--..' => 'Z' }
  code[char]
end

def decode_word(word)
  string = ''
  characters = word.split
  characters.each { |char| string.concat(decode_char(char)) }
  string
end
