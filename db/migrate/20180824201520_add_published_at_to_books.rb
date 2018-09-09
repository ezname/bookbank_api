class AddPublishedAtToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :published_at, :datetime
  end
end
