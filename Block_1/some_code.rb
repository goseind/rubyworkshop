# some ruby code ideas

0.step(Math::PI, 0.1) {|x| puts Math.sin(x) }

File.open('text.txt') do |f|
    f.each {|line| puts line}
end

File.open('text.txt') do |f|
    f.each_with_index do |line,number|
      puts"#{number}: #{line}"
    end
  end

[1,2,3,4,5].map {|x| puts x**x}

[1,2,3,4,5].collect {|x| puts x**x}

# data = [2, 5, 3, 4]
# sum = data.inject {|sum, x| puts sum+x }      # => 14    (2+5+3+4)
# floatprod = data.inject(1.0) {|p,x| puts p*x }  # => 120.0 (1.0*2*5*3*4)
# max = data.inject {|m,x| m>x ? m : x }     # => 5     (größtes Element)
# puts max

def twice(nbr)
  yield 2*nbr
  yield 3*nbr
end

twice(2) {|x| puts x}