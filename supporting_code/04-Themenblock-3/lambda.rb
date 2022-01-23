=begin
To pass arguments in the lambda function, we can either use normal lambda syntax or use the literal lambda operator ” -> ”
=end

# Using lambda keyword
lambda_with_args = lambda {| s | puts "Hello "+ s }

# Aufruf der Lambda Funktion mit Parameterübergabe
lambda_with_args.call("Workshop")