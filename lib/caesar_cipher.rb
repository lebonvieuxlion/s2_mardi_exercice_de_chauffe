def letter_cipher (letter, key)

	case

		when letter.class == String 													#vérifie en premier lieu que la lettre donnée est bien un string

				number_for_letter =  letter.ord 									    #obtention du numéro ASCII correspondant pour la lettre		
				theoretical_ascii = number_for_letter + key 							#calcul du numéro théorique ASCII que pourrait avoir la lettre décalée

				if theoretical_ascii.between?(65, 90) || theoretical_ascii.between?(97, 122) 	#vérification que le numéro ASCII ne dépasse pas Z ou z

					return theoretical_ascii.to_i.chr 										    #si le numéro ASCII ne dépasse pas Z ou z on le garde
																								#et on le transforme
				else 

					return (theoretical_ascii-26).to_i.chr  						#si il dépasse z ou Z on lui retire 26 pour obtenir son vrai numéro

				end

		else return false															#si la lettre n'est pas un string on renvoie faux

	end

end





def string_cipher (string, key)

array_letter_from_string = string.split(//)								#met chaque élément de la string dans un array

array_letter_from_string = array_letter_from_string.map  do |letter|	#transforme le array en réalisant une action sur la string 

		if letter.match(/[a-zA-z]/)										#vérifie que pour chaque élément du array c'est une lettre en majuscule ou minuscule
			letter = letter_cipher(letter, key)							#utilisation de la méthode letter_cipher pour transformer la lettre à l'aide de la clef
		else 
			letter 														#si ce n'est pas une lettre on renvoie l'élément du array normalement
		end
	end

array_letter_from_string.join("")										#on joint le array sans espace car ces derniers n'ont pas été modifié

end

puts string_cipher("What a string!", 5)