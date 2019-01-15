def is_multiple_of_3_or_5?(a)
a % 3 == 0 || a % 5 == 0
end

def sum_of_3_and_5_multiples(a=[])


	return a.inject(0) { |sum, p|is_multiple_of_3_or_5?(p) ? sum + p : 0 } #je fais un inject à partir de 0 en mettant une condition à l'intérieur
																			#la ternaire se fait grâce aux symboles '?' ':'
																			#on la lit comme ceci si la fonction est true alors je fais sum + p sinon 
																			#j'ajoute 0
end

puts sum_of_3_and_5_multiples([1,2,3,6])




