class CreateUsers < ActiveRecord::Migration[5.1]
      
  def change
    create_table :users do |t|
    	t.string :organization
    	t.string :email
		t.string :password
		#t.string :Department
		t.text :bio
      t.timestamps
    end
  end
end
