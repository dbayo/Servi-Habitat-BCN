class CreateExpedients < ActiveRecord::Migration
  def change
    create_table :expedients do |t|
      t.string :compania
      t.string :ciaProced
      t.integer :refCia
      t.integer :tlfCia
      t.integer :numPoliza
      t.string :contacto
      t.integer :numRef
      t.string :nombre
      t.string :calle
      t.string :domicilio
      t.string :numero
      t.string :piso
      t.string :apellido1
      t.string :localidad
      t.string :poblacion
      t.string :apellido2
      t.integer :cPostal
      t.string :zona
      t.string :contactoAsegurado
      t.string :nif
      t.integer :tlf1
      t.integer :tlf2
      t.text :descripcion
      t.string :urgente
      t.string :perito
      t.string :agente
      t.string :esteticos
      t.string :franquicia
      t.string :valorFranquicia
      t.float :maxAuto
      t.string :danos
      t.string :categoria
      t.string :dFact
      t.string :tipo
      t.string :estado

      t.timestamps
    end
  end
end
