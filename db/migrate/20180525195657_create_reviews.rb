class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :price
      t.text :review
      t.integer :stars

      t.timestamps
    end

    def changed
      create_table :restaurants do |r|
        r.varchar :name
        r.varchar :type

        r.timestamps
    end
  
end
