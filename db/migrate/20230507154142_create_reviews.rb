class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :snack_id
      t.integer :user_id
      t.string :note
      t.integer :snack_rate

      t.timestamps
    end
  end
end
