dictionary = %w(below down go going horn how howdy it i low own part partner sit)

def substrings(word, dictionary)
	word_array = word.downcase.gsub(/[^a-z0-9\s]/, '').split (' ')
	substrings = {}
	for word in word_array do
		for item in dictionary do
			if word == item
				substrings[word] = substrings[word] ? substrings[word] + 1 : 1
			elsif word.include?(item)
				substrings[item] = substrings[item] ? substrings[item] + 1 : 1
			end
		end
	end
	substrings
end

puts "Insert word(s)"
word = gets.chomp

puts substrings(word, dictionary)