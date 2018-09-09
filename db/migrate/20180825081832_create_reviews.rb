class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.float :rating, null: false
      t.text :comment
      t.integer :author_id, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
