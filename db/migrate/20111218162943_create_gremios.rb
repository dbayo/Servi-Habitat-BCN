class CreateGremios < ActiveRecord::Migration
  def change
    create_table :gremios do |t|
      t.string :gremio
      t.string :prof
      t.date :finPrev
      t.time :Hora
      t.date :FechaFin
      t.time :HFin
      t.boolean :conformeAseg
      t.text :descripcion
      t.integer :iva
      t.string :destFact
      t.boolean :facturada
      t.boolean :albaranada
      t.references :expedient

      t.timestamps
    end
  end
end
