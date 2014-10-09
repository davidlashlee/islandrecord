class CreateArtists < ActiveRecord::Migration
  def change
  	create_table :artists do |t|
  		t.string :first_name
  		t.string :last_name
  		t.integer :rep_id
  		t.timestamps 
  	end
  end
end
