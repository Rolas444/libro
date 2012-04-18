class CreateAutors < ActiveRecord::Migration
  def change
    create_table :autors do |t|
      t.integer :libro_id
      t.string :nombre

      t.timestamps
    end
  end
end
