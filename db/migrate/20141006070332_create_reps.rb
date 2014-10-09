class CreateReps < ActiveRecord::Migration
  def change
  	create_table :reps do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :contact_number
  		t.string :email
  		t.timestamps 
  	end
  end
end
