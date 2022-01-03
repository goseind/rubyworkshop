=begin
Implementiere eine Funktion, die über eine Farbliste iteriert, diese sortiert in ein neues Array schreibt und pro Zeile ausgibt!
Überprüfe zu Beginn, ob die Farbliste leer ist.
=end

# Ein vollen/leeres String Array mit Farben
col_full = %w(green blue yellow pink)
col_empty = []

#Funktion zum Transfer der Farben in ein neues Array
def iterate_colors(colors)
    # Your code here
    unless colors.empty?
      a = Array.new
      colors.sort.each do # Auch mit "collect" möglich?
          |c| a.push(c)
      end.each { |c| puts c }
    end
  end

# Funktion mit den beiden Arrays ausführen
iterate_colors(col_full)
iterate_colors(col_empty)