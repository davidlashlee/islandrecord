class Albums < ActiveRecord::Migration
  def change
  	create_table :album do |t|
  		t.string :album_name
  		t.string :song_name
  		t.timestamp 
  end
  end
end
