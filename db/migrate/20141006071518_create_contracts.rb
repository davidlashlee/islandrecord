class CreateContracts < ActiveRecord::Migration
  def change
  	create_table :contracts do |t|
  		t.string :name
  		t.string :length
  		t.text :artist_responsibility
  		t.text :rep_responsibility
  		t.string :rep_margin
  		t.timestamps 
  end
  end
end
