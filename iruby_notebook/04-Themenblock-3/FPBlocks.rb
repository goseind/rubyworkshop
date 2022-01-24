# map

## Dont​

dogs = []
["milu", "rantanplan"].each do |name|
    dogs << name.upcase
end
dogs # => ["MILU", "RANTANPLAN"]​


## ​Do​

dogs = ["milu", "rantanplan"].map do |name|
name.upcase
end
# => ["MILU", "RANTANPLAN"]​


# select

## Dont

dogs = []

["milu", "rantanplan"].each do |name|
    if name.size == 4
        dogs << name
    end
end
dogs # => ["milu"]​

## Do​

dogs = ["milu", "rantanplan"].select do |name|
    name.size == 4
end
# => ["milu"]​


# inject

## Dont:​

length = 0
["milu", "rantanplan"].each do |dog_name|
    length += dog_name.length
end
length # => 15​


## ​Do:​

length = ["milu", "rantanplan"].inject(0) do |acc, dog_name|
    acc + dog_name.length
end
# =>​

## Noch kürzer (da einfache Operation zw. Acc und Element:​

length = ["milu", "rantanplan"].map(&:length).inject(0, :+)​
# 15​
