class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.references :user
      t.text :content

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end
