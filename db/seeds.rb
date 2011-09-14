 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
#Programmer.find_or_create_by_name( :name => 'sridevi')
#Programmer.find_or_create_by_name('geet')


Programmer.delete_all
 ["sridevi","geet","emilty"].each do |name|
  Programmer.find_or_create_by_name(name)
 end


Programmer.find_or_create_by_name('emily')

PairsWith.create!(:programmer_id=>'2', :pair_id=>'3',:number_of_times_paired=>'2')
 PairsWith.create!(:programmer_id=>'3', :pair_id=>'1',:number_of_times_paired=>'4')
 PairsWith.create!(:programmer_id=>'2', :pair_id=>'1',:number_of_times_paired=>'5')

#puts "hi sridevi"