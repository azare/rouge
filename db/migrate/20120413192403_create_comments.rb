class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :said_by
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end
