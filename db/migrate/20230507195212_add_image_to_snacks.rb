class AddImageToSnacks < ActiveRecord::Migration[7.0]
  def change
    add_column :snacks, :snack_image, :string
  end
end
