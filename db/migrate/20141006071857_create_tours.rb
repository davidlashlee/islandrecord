class CreateTours < ActiveRecord::Migration
  def change
  	create_table :tours do |t|
  		t.datetime :date_time
  		t.string :location

  		t.timestamps 
  end
  end
end
