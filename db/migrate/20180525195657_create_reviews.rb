class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :price
      t.text :review
      t.integer :stars

      t.timestamps
    end
  end
end
