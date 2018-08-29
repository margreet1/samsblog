class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :restaurant
      t.string :imageUrl
      t.float :rating

      t.timestamps
    end
  end
end
