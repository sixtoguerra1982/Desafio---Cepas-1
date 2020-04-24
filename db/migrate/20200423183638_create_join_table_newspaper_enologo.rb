class CreateJoinTableNewspaperEnologo < ActiveRecord::Migration[5.2]
  def change
    create_join_table :newspapers, :enologos do |t|
      # t.index [:newspaper_id, :enologo_id]
      # t.index [:enologo_id, :newspaper_id]
    end
  end
end
