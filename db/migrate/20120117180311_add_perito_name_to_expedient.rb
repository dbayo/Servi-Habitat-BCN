class AddPeritoNameToExpedient < ActiveRecord::Migration
  def change
    add_column :expedients, :peritoName, :string
  end
end
