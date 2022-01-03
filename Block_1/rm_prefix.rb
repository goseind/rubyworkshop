=begin
Schreibe eine “Remove Prefix” Methode, die eine gegebene Anzahl an Buchstaben von einem Satzanfang entfernt.
=end

def rm_prefix(s, pre)
    s[pre, s.length()]
end

puts rm_prefix("Error message: Please restart your computer!", 15)