class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :description
      t.string :thumbnail
      t.float :rate, default: 0, null: false

      t.timestamps
    end
  end
end
