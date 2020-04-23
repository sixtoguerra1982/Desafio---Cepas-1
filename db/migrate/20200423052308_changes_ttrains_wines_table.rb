class ChangesTtrainsWinesTable < ActiveRecord::Migration[5.2]
  def change
  	rename_table 'strains_wines', 'strain_wines'
    add_column :strain_wines, :id, :primary_key
    add_column :strain_wines, :percentage, :float, default: 0
  end
end
