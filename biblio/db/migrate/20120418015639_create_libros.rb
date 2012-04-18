class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.string :titulo
      t.text :descripcion
      t.integer :paginas
      t.decimal :precio, :precision => 8,:scale => 2

      t.timestamps
    end
  end
end
