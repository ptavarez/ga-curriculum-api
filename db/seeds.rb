# frozen_string_literal: true

require 'csv'

csv_text = File.read(Rails.root.join('data', 'week1.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekOneRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekOneRepo.count} rows in the Week One Repo table"
