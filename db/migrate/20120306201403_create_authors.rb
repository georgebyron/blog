class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :nick
      t.string :first_name
      t.string :last_name
      t.text :description
      t.text :remarks
      t.string :email	

      t.timestamps
    end
  end
end
