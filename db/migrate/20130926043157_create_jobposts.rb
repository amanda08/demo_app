class CreateJobposts < ActiveRecord::Migration
  def change
    create_table :jobposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
