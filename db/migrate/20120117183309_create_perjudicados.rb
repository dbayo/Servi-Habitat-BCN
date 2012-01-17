class CreatePerjudicados < ActiveRecord::Migration
  def change
    create_table :perjudicados do |t|
      t.string :nombre
      t.text :direccion
      t.string :telefono1
      t.string :telefono2
      t.text :descripcion
      t.references :expedient

      t.timestamps
    end
    add_index :perjudicados, :expedient_id
  end
end
