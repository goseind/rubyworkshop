# Einstieg in Ruby

# Lösung der ersten kleinen Aufgabe

# Möglichkeit 1
9.downto(1) {|n| print n }
puts " Abflug!"

# Möglichkeit 2
# Klammern sind hier nicht notwendig, ebensowenig spielt der Zeilenumbruch eine Rolle
# Entscheident ist er Ausdruck "end", der den Block beendet
9.downto(1) do |n|
    print n
end
puts " Abflug!"