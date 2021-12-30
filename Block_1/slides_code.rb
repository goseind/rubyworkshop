# Code aller Folien

if x == 1
    name = "eins"
  elsif x == 2
    name = "zwei"
  elsif x == 3 then name = "drei"
  elsif x == 4; name = "vier"
  else
    name = "viele"
  end
  

name = if    x == 1 then "eins"
elsif x == 2 then "zwei"
elsif x == 3 then "drei"
elsif x == 4 then "vier"
else              "viele"
end


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