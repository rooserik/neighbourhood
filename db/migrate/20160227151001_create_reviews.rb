class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :story
      t.string :writer
      t.references :area, index: true, foreign_key: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
