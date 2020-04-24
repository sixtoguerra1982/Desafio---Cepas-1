class ChangeNameToEnologosNewspapers < ActiveRecord::Migration[5.2]
  def change
  	rename_table 'enologos_newspapers', 'enologo_newspapers'
    add_column :enologo_newspapers, :id, :primary_key
    add_column :enologo_newspapers, :cargo, :string
  end
end
