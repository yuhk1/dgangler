class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.date :day
      t.string :address
      t.string :tackle
      t.string :kind
      t.integer :number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
