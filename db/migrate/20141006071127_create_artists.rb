class CreateArtists < ActiveRecord::Migration
  def change
  	create_table :artist do |t|
  		t.string :first_name
  		t.string :last_name
  		t.timestamp 
  end
end