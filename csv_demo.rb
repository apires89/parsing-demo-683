require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

array = []
### READING CSV
CSV.foreach(filepath, **csv_options) do |row|
  #it goes row by row and it can be extracted
  puts "#{row['Name']} | #{row['Appearance']} | #{row['Origin']}"
  array << row
end

### SAVING CSV

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

CSV.open(filepath, "wb", **csv_options) do |csv|
  csv << ["Name", "Appearance", "Origin"]
  csv << ["SuperBock", "Perfect", "Portugal"]
end





