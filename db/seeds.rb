# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#The CSV parsing is a little crude compared to tricks I would have
#done in python, where I simply created a mapping per file from
#internal field name/attribute and the files header, and read the file
#as a dictionary much as the ruby csv reader appears to let me do;
#except that allowed me to iterate a little cleaner. I suppose it
#could have been done this way here as well; but i dont know enough
#ruby yet to use attribute getters and think that might be overkill until its required
# but it lets you do another loop inside along lines of fields.each do |field|; t.@field = row[@field]


require 'csv'

csvs = [ 'companylist.csv', 'companylist-2.csv', 'companylist-3.csv' ]

csvs.each do |infile|
  csv_text = File.read(Rails.root.join('lib', 'seeds', infile))
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1' )
  csv.each do |row|
    t = Stock.find_or_initialize_by(Name: row['Name'], Symbol: row['Symbol'])
    t.Symbol = row['Symbol']
    t.Name = row['Name']
    t.LastSale = row['LastSale']
    t.MarketCap = row['MarketCap']
    t.IPOyear = row['IPOyear']
    t.Sector = row['Sector']
    t.Industry = row['industry']
    t.SummaryQuote = row["Summary Quote"]
    t.Exchange = infile #sorta like exchange identification
    t.save
  end
  puts "There are now #{Stock.count} rows in the table"
end
puts "There are now #{Stock.count} rows in the table"
