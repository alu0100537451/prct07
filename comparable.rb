module Comparable
	def <=> (other)
		if other.instance_of? Racional
			return (numerador.to_f/denominador)<=>(other.numerador.to_f/other.denominador)
		else
			false
	end
end
