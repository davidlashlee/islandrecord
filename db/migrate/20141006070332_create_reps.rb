class CreateReps < ActiveRecord::Migration
  def change
  	create_table :rep do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :contact_number
  		t.string :email
  		t.timestamp 
  end
end
