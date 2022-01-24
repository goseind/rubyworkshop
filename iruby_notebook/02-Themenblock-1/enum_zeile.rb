=begin
Schreibe eine for-Schleife,
die mittels eines Enumerators eine Textdatei Zeile für Zeile durchgeht
und dabei die aktuelle Zeile ausgibt.
=end

# Öffnen einer einfachen txt Datei
text = File.open('text.txt')

# for-Schleife mit Enumerator und Ausgabe
for zeile, zeilennr in text.each_line.with_index
    print "#{zeilennr+1}: #{zeile}"
end