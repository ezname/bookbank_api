class RenameRateToRatingAndChangeDescDataType < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :rate, :rating
    change_column :books, :description, :text
  end
end
