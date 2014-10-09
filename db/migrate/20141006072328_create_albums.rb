class CreateAlbums < ActiveRecord::Migration
  def change
  	create_table :albums do |t|
  		t.string :album_name
  		t.string :song_name
  		t.integer :artist_id
  		t.timestamps
  end
  end
end
