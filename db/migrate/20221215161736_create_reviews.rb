class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :customer_id
      t.integer :restaurant_id
      t.integer :star_rating, default: 0
    end
  end
end
