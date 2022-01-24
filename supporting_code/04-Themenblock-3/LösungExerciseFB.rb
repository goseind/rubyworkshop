# imperativ
n, num_elements, sum = 1, 0, 0
while num_elements < 10
    if n**2 % 5 == 0
        sum += n
        num_elements += 1
    end
    n += 1
end
sum #=> 275​

# funktional

Integer::natural.select {
    |x| x**2 % 5 == 0
}
.take(10)
.inject(:+)
# => 275​
