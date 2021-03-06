# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = Artist.create([{ first_name: 'jack', last_name: 'Johnson'},{ first_name: 'Jack', last_name: 'Black'}, { first_name: 'Fever', last_name: 'Ray'}])
rep = Rep.create([{first_name: 'Andrew', last_name: 'Tan', contact_number: '6265553567', email: 'Andrewtanrep@islandrecord.com'},{first_name: 'Sing', last_name: 'Chang', contact_number: '4956155694', email: 'TheManSingchang@islandrecord.com'}])
contract = Contract.create([{ name: 'Island Record Contract with Jack Johnson', length: '2 Years', artist_responsibility: 'Make Albums', rep_responsibility: 'sell stuff', rep_margin: '10', artist_id: '1'}])
