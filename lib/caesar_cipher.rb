def letter (letter, key)

	case

		when letter.class == String

				number_for_letter =  letter.ord
				theoretical_ascii = number_for_letter + key 

				if theoretical_ascii.between?(65, 90) || theoretical_ascii.between?(97, 122)

					return theoretical_ascii.to_i.chr

				else 

					return (theoretical_ascii-26).to_i.chr

				end

		else return "Sorry it's not a letter"

	end

end

puts letter("k", 3)