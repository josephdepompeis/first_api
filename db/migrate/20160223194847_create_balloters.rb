class CreateBalloters < ActiveRecord::Migration
  def change
    create_table :balloters do |t|
      t.string :name
      t.string :party
      t.string :token
      t.integer :candidate_id

      t.timestamps null: false
    end
  end
end
