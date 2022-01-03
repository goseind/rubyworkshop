"""
Code aller Folien im ersten Themenblock
Autor: Domenic Gosein
Teile der Beispiele sind (modifiziert) entnommen aus
Die Programmiersprache Ruby von David Flanagan und Yukihiro Matsumoto

"""

# Beispiel einer if, elseif, else Fallunterscheidung
# mit Zeilenümbrüchen und then zur Wertzuweisung
if x == 1
  name = "eins"
elsif x == 2
  name = "zwei"
elsif x == 3 then name = "drei"
elsif x == 4; name = "vier"
else
  name = "viele"
end

# Beispiel einer Fallunterscheidung als Rückgabewert
name = if    x == 1 then "eins"
       elsif x == 2 then "zwei"
       elsif x == 3 then "drei"
       elsif x == 4 then "vier"
       else              "viele"
       end

# Beispiel einer case Fallunterscheidung
name = case
       when x == 1 then "eins"
       when x == 2 then "zwei"
       when x == 3 then "drei"
       when x == 4 then "vier"
       else "viele"
       end


unless Bedingung
    Code
end

unless Bedingung
    Code
else
    Code
end

Code unless Bedingung


def how_many_messages(n)
    "Sie haben " + n.to_s + (n==1 ? " Nachricht." : " Nachrichten.")
end


while Bedingung do
  Code
end

until Bedingung do
  Code
end

a = [1,2,3]
puts a.pop until a.empty?

for Var in Sammlung do
  Rumpf
end


hash = {:a=>1, :b=>2, :c=>3}
hash.each do |key,value|
  puts "#{key} => #{value}"
end

# Enumeratoren

data = [1, 3, 6, 6, 8]
process(data.to_enum)

s = "hallo"
s.enum_for(:each_char).map {|c| c.succ }  # => ["i", "b", "m", "m", "p"]


iterator = 9.downto(1)             
begin
  print iterator.next while true
rescue StopIteration # kann auch weggelassen werden
  puts "... Abflug!"
end

# Blöcke

1.upto(10) {|x| puts x }
1.upto(10) do |x|
  puts x
end
1.upto(10)
 {|x| puts x }

array.collect do |x|
  next 0 if x == nil  # Vorzeitiges Ende, wenn x nil ist
  next x, x*x         # Zwei Werte zurückgeben
end