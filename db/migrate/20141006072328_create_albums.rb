class CreateAlbums < ActiveRecord::Migration
  def change
  	create_table :albums do |t|
  		t.string :album_name
  		t.string :song_name
  		t.timestamps
  end
  end
end
