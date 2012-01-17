class AddEsteticosNameToExpedient < ActiveRecord::Migration
  def change
    add_column :expedients, :esteticosName, :string
  end
end
