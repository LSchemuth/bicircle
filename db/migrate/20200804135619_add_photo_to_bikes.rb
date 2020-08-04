class AddPhotoToBikes < ActiveRecord::Migration[6.0]
  def change
    add_column :bikes, :photo, :string
  end
end
