
def substrings(string, dictionary)

	words = []

	input_strings = string.split(" ")

	input_strings.size.times do |i|

		current_string = input_strings[i].downcase

		dictionary.each do |word|
			if current_string.include?(word)
				words = words.push(word)
			end
		end

	end

	counts = Hash.new(0)
	words.each { |word| counts[word] = counts[word] + 1 }

	puts counts
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


 substrings("Howdy partner, sit down! How's it going?", dictionary)