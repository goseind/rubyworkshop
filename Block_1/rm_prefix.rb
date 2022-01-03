=begin
Schreibe eine “Remove Prefix” Methode, die eine gegebene Anzahl an Buchstaben von einem Satz entfernt.
=end

def rm_prefix(s, len=1)
    s[len, s.length()]
end

puts rm_prefix("Error message: Please restart your computer!", 15)