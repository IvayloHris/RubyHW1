require 'csv'
table = CSV.open("testing.csv", headers: :first_row).map(&:to_s)

table.split(', ')

keys = ['kur', 'patka', 'population' ]
dictionary = {keys => table}


puts table[1]
