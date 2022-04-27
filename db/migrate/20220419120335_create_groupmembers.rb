class CreateGroupmembers < ActiveRecord::Migration[7.0]
  def change
    create_table :groupmembers do |t|
      t.integer :group_id
      t.integer :user_id
      t.boolean :is_admin

      t.timestamps
    end
  end
end
