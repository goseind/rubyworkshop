# temp code

array.collect do |x|
    next 0 if x == nil  # Vorzeitiges Ende, wenn x nil ist
    next x, x*x         # Zwei Werte zurückgeben
end
