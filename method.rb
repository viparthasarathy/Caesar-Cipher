def caesar_cipher(string, shift)
	#takes string and int, shifts each character in string by int value, ignores spaces
	letters = string.split("")
	shifted_string = []
	punctuation = [",", " ", ".", "!", "?", "'", ";", ":"]
	letters.each do |letter|
		if punctuation.include?(letter)
			shifted_value = letter
		else
			if letter.ord > "Z".ord #checking to see if lowercase or uppercase
				shifted_value = letter.ord + shift
				if shifted_value > "z".ord #little z as this letter is lowercase
					shifted_value -= 26 
				end
			else #otherwise, assume uppercase
				shifted_value = letter.ord + shift 
				if shifted_value > "Z".ord #checking to see if overshot last letter in alphabet
					shifted_value -= 26 #wrap around back to start of alphabet if we have overshot
				end
			end
			shifted_value = shifted_value.chr
		end
		shifted_string.push(shifted_value)
	end
	shifted_string.join
end
