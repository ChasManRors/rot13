# Alternatively use #!/usr/bin/env ruby & cmdline.rb
require 'fileutils'
require 'pry'

REPEATING_ALPHABET = ('a'..'z').to_a.join * 2 + ('A'..'Z').to_a.join * 2
def rot13(string)
  string.chars.map do |l|
    index = REPEATING_ALPHABET.index(l)
    index.nil? ? l : REPEATING_ALPHABET[index + 13]
  end.join
end

# Better solution
def _rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end
