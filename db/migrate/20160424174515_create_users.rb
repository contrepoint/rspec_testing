class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email, null: false
    	t.string :uuid, null: false
    	t.integer :subscriber_id
      t.timestamps null: false
    end
  end
end
