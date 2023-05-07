class CreateSnacks < ActiveRecord::Migration[7.0]
  def change
    create_table :snacks do |t|
      t.string :name
      t.string :brand
      t.integer :user_id

      t.timestamps
    end
  end
end
