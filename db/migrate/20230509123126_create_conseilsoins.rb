class CreateConseilsoins < ActiveRecord::Migration[6.0]
  def change
    create_table :conseilsoins do|t|
        t.string :title , null: false
        t.text :body , null: false
  
        t.timestamps
    end
  end
end
