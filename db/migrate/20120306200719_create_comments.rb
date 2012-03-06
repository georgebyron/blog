class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter_nick
      t.string :commenter_email
      t.integer :comment_id
      t.integer :post_id

      t.timestamps
    end
  end
end
