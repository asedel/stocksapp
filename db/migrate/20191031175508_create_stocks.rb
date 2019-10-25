class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :Symbol
      t.string :Name
      t.decimal :LastSale
      t.decimal :MarketCap
      t.date :IPOyear
      t.text :Sector
      t.string :Industry
      t.text :SummaryQuote
      t.text :Exchange

      t.timestamps
    end
  end
end
