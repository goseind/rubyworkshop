=begin
Schreibe eine Hello-Funktion mit einem Lambda, das einen Parameter (Namen) übergeben bekommt. Wird kein Parameter übergeben, soll "Hello World" ausgegeben werden.
=end

lambda_with_args = lambda do |s = "World"| 
	puts "Hello "+ s 
end

lambda_with_args.call()    			# => "Hello World"​
lambda_with_args.call("Workshop")	# => "Hello Workshop"​

=begin
Schreibe eine Funktion, die ein Lambda und einen Parameter Übergeben bekommt. Der Parameter wird an das Lambda übergeben und das Ergebnis soll ausgegeben werden.
=end

add_10 = lambda { |num| num + 10 }
multiply_2 = lambda { |num| num * 2 }
 
def using_lambda_with_functions(lambda, number)
  puts lambda.call(number)
end
 
using_lambda_with_functions(add_10, 10)    		# => 20​
using_lambda_with_functions(multiply_2, 20) 	# => 40​

=begin
Schreibe eine Funktion, die ein Lambda erstellt, das den Parameter überprüft und "OK" oder "N/A" zurückgibt.
=end

def build_lambda()​
  my_lambda = lambda do |key|​
    if key == "200"
      return "OK"​
    else​
      return "N/A"​
    end
  end
  my_lambda​
end
​
code_check = build_lambda()​
puts code_check["200"]    # => "OK"​
puts code_check["404"]    # => "N/A"​