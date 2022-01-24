=begin
Schreibe ein Funktion, die ein 2 mal einen yield Aufruf macht, dazwischen soll eine weiterer String ausgegeben werden.
=end

def call_twice
	puts "In the call_twice method"

	# using yield keyword
	yield
	puts "Again from the call_twice method"
	yield
end

call_twice {puts "This is a block"}

=begin
Schreibe eine Funktion die den Rückgabewert des yields ausgibt.
=end

def yield_with_return_value
  hello_world = yield

  puts hello_world
end

yield_with_return_value { "Hello World!" } # => Hello World!


=begin
Schreibe eine Funktion, die ein yield mit einem Parameter aufruft.
=end

def calc
	# yield Keyword mit Parameterübergabe
   yield 2*3
   puts "In the method calc"
   yield 100
end

# Aufruf der Funktion mit yield block
calc {|i| puts "calc #{i}"}

=begin
Beim Definieren einer Methode und innerhalb der Methode soll yield mit 2 Parametern aufgerufen werden.
=end

def arithmetic(a, b)
	# yield mit 2 Parametern
	yield(a, b)
end

# addition of two number
puts "The sum of the two numbers is #{arithmetic(8, 2) { |a, b| a + b }}" 

=begin
Wenn yield aufgerufen wird, benötigt diese Methode einen block. Schreibe eine Funktion die sowohl mit, als auch ohne Parameter funktioniert.
=end

def optional_block
  yield if block_given?
end

optional_block # => nil
optional_block { puts 'optional block' }