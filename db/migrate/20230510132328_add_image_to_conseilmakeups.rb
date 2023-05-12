class AddImageToConseilmakeups < ActiveRecord::Migration[6.0]
  def change
    add_column :conseilmakeups, :image, :string
  end
end
