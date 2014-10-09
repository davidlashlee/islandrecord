class Tours < ActiveRecord::Migration
  def change
  	create_table :tour do |t|
  		t.datetime :date_time
  		t.string :location

  		t.timestamp 
  end
  end
end
