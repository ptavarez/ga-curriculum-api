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
puts "There are now #{WeekOneRepo.count} rows in the Week One Repos' table"

csv_text = File.read(Rails.root.join('data', 'week2.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekTwoRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekTwoRepo.count} rows in the Week Two Repos' table"

csv_text = File.read(Rails.root.join('data', 'week3.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekThreeRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekThreeRepo.count} rows in the Week Three Repos' table"

csv_text = File.read(Rails.root.join('data', 'week4.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekFourRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekFourRepo.count} rows in the Week Four Repos' table"

csv_text = File.read(Rails.root.join('data', 'week5.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekFiveRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekFiveRepo.count} rows in the Week Five Repos' table"

csv_text = File.read(Rails.root.join('data', 'week6.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekSixRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekSixRepo.count} rows in the Week Six Repos' table"

csv_text = File.read(Rails.root.join('data', 'week7.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekSevenRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekSevenRepo.count} rows in the Week Seven Repos' table"

csv_text = File.read(Rails.root.join('data', 'week8.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekEightRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekEightRepo.count} rows in the Week Eight Repos' table"

csv_text = File.read(Rails.root.join('data', 'week9.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekNineRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekNineRepo.count} rows in the Week Nine Repos' table"

csv_text = File.read(Rails.root.join('data', 'week10.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekTenRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekTenRepo.count} rows in the Week Ten Repos' table"

csv_text = File.read(Rails.root.join('data', 'week11.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekElevenRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekElevenRepo.count} rows in the Week Eleven Repos' table"

csv_text = File.read(Rails.root.join('data', 'week12.csv'))
csv = CSV.parse(csv_text, :row_sep => :auto, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  row = row.to_hash
  w = WeekTwelveRepo.new
  w.week = row['Week']
  w.day = row['Day']
  w.repo_url = row['Repo Url']
  w.name = row['Name']
  w.category = row['Category']
  w.save
  puts "#{w.name} saved"
end
puts "There are now #{WeekTwelveRepo.count} rows in the Week Twelve Repos' table"
