=begin
Yield with argument: Below is the program of yield with argument.
=end

def calc
	# yield Keyword mit Parameterübergabe
   yield 2*3
   puts "In the method calc"
   yield 100
end

# Aufruf der Funktion mit yield block
calc {|i| puts "calc #{i}"}