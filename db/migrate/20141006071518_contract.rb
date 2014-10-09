class Contracts < ActiveRecord::Migration
  def change
  	create_table :contract do |t|
  		t.string :name
  		t.string :length
  		t.text :artist_responsibility
  		t.text :rep_responsibility
  		t.string :rep_margin
  		t.timestamp 
  end
  end
end
