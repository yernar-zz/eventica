class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :user_id
      t.string :description
      t.string :venue
      t.datetime :date

      t.timestamps
    end
  end
end
