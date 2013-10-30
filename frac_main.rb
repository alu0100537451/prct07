require "./racional"

	
	r1 = Racional.new(4,8)
	
	r2 = Racional.new(3,5)

	r3 = Racional.new(0,0)

	puts "El numerador de r1 es :  #{r1.num}"	
	
	puts "El denominador de r1 es : #{r1.denom}"
	
	puts "El numerador de r2 es :  #{r2.num}"	

	puts "El denominador de r2 es : #{r2.denom}"

	puts "La fraccion r1 se imprime :  #{r1}"

	puts "La fraccion r2 se imprime :  #{r2}"

	puts "La fraccion r1: #{r1} \t Y el resultado de la fraccion: #{r1.to_f}"

	puts "La fraccion r2: #{r2} \t Y el resultado de la fraccion: #{r2.to_f}"
	
	puts "Valor absoluto r1: #{r1.abs}"

	puts "Opuesta de la r1 es #{-r1}"

	puts "Es r1 menor que r2? #{r1 < r2}"

	puts "Es r1 mayor que r2? #{r1 > r2}"

	puts "r1 es menor o igual que r2? #{r1 <= r2}"

	puts "r1 es mayor o igual que r2? #{r1 >= r2}"

	puts "#{r1}" "\t+" "\t#{r2}""\t=" "\t#{r1 + r2}"

	puts "#{r1}" "\t-" "\t#{r2}""\t=" "\t#{r1 - r2}"

	puts "#{r1}" "\t*" "\t#{r2}""\t=" "\t#{r1 * r2}"

	puts "#{r1}" "\t/" "\t#{r2}""\t=" "\t#{r1 / r2}"
	
	puts "El resto de la division entre #{r1}" "\t/" "\t#{r2}""\tes\t #{r1 % r2}"

	r3=(r1/r2)

	puts "El reciproco de la division entre #{r1} y #{r2}, es: \t #{r3.reciprocal}"





