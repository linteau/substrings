
def substrings(string, dictionary)

	words = []

	dictionary.each do |word|
		if string.include?(word)
			words = words.push(word)
		end
	end

	counts = Hash.new(0)
	words.each { |word| counts[word] = counts[word] + 1 }

	puts counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


 substrings("below", dictionary)