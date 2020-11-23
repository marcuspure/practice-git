class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :tittle
      t.text :content
      t.belongs_to :board_id, null: false, foreign_key: true
      t.belongs_to :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
