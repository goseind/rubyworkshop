# Dateien

## Dateien öffnen / schließen

file = File.open("dateiname.txt")
file = File.open("dateiname.txt", "modus")

puts file.closed?
file.close

## Dateien umbennen / löschen

File.rename("alter_name.txt", "neuer_name.txt")
File.delete("dateiname.txt")

## Dateiinformationen erhalten

File.exists?(“dateiname.txt”)
File.file?(“dateiname.txt”)
File.directory?(“dateiname.txt”)
File.readable?(“dateiname.txt”)
File.writeable?(“dateiname.txt”)
File.executable?(“dateiname.txt”)
File.size(“dateiname.txt”)
File.zero?(“dateiname.txt”)
File.ftype(“dateiname.txt”)
File.ctime(“dateiname.txt”)
File.mtime(“dateiname.txt”)
File.atime(“dateiname.txt”)

## Dateien lesen

file_data = file.read
file_data = file.readline
file_data = file.readlines.map(&:chomp)
file_data = File.read(“dateiname.txt”).split

File.each(“dateiname.txt”) { |line|
    put line
}

## Dateien schreiben

file.puts(“Testzeile”)
file.rewind
