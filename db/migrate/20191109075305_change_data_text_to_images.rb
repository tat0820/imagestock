class ChangeDataTextToImages < ActiveRecord::Migration[5.2]
  def change
    change_column :images, :text, :string
  end
end
