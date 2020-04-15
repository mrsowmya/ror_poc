class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
    	t.string :street_address
    	t.string :city
    	t.string :state
    	t.string :zip
    	t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
