class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :restroom, foreign_key: true
      t.string :cleanliness
      t.string :smell

      t.timestamps
    end
  end
end
