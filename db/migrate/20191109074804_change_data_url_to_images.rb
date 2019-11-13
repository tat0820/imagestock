class ChangeDataUrlToImages < ActiveRecord::Migration[5.2]
  def change
    change_column :images, :text, :text
  end
end
