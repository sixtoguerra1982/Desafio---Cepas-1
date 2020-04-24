class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.references :enologo, index: true, foreign_key: true
      t.references :wine, index: true, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
