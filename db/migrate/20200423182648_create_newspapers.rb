class CreateNewspapers < ActiveRecord::Migration[5.2]
  def change
    create_table :newspapers do |t|
      t.string :name

      t.timestamps
    end
  end
end
