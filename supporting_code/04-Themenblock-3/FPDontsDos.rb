# Dont's und Do's

## Dont: Nicht einfach neue Elemente in Arrays hinzufügen​

indexes = [1, 2, 3]
indexes << 4
indexes # [1, 2, 3, 4]

## Do:​

indexes = [1, 2, 3]
all_indexes = indexes + [4] # [1, 2, 3, 4]​


##  Dont: Hashes updaten​

hash = {:a => 1, :b => 2}
hash[:c] = 3 hash

## Do:​

hash = {:a => 1, :b => 2}
new_hash = hash.merge(:c => 3)


# ​Dont: Keine Ersetzungsmethoden verwenden​

string = "hello"
string.gsub!(/l/, 'z')
string # "hezzo"​

## Do:​

string = "hello"
new_string =  string.gsub(/l/, 'z') # "hezzo"​


## Dont: Wie man Werte zusammenführt​

output = []
output << 1
output << 2 if i_have_to_add_two
output << 3

## Do:​

output = [1, (2 if i_have_to_add_two), 3].compact​
