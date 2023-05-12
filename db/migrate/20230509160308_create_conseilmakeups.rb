class CreateConseilmakeups < ActiveRecord::Migration[6.0]
  def change
    create_table :conseilmakeups do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
