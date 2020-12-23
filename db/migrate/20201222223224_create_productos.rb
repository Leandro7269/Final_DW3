class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :cant_min
      t.integer :cant_act
      t.integer :precio
      t.boolean :activo
      t.integer :marca_id
      t.integer :rubro_id

      t.timestamps
    end
    add_foreign_key :productos, :marcas
    add_foreign_key :productos, :rubros
  end
end
