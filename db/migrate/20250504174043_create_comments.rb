class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :user_id
      t.text :body
      t.timestamps
    end
  end
end
