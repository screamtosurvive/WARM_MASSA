class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.integer :phone_number

      t.timestamps
    end
  end
end
