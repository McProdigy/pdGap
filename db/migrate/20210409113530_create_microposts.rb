class CreateMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :microposts do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :microposts, :users
    add_index :microposts, [:user_id, :created_at]
  end  
end
