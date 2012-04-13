class CreateReviewers < ActiveRecord::Migration
  def change
    create_table :reviewers do |t|
      t.string :name
      t.string :description
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
