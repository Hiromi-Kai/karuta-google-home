require "csv"

namespace :insert_karuta do
  task exec: :environment do
    table = CSV.table('csvs/karuta.csv')
    karutas = []
    table.each do |row|
      karutas << Karuta.new(row.to_h)
    end
    Karuta.import(karutas)
  end
end