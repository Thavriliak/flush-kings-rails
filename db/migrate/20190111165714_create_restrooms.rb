class CreateRestrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :restrooms do |t|
      t.references :location, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name_of_establishment
      t.string :cleanliness
      t.string :smell
      t.integer :number_of_toilets
      t.boolean :handicap_accessible
      t.boolean :baby_care
      t.string :hours

      t.timestamps
    end
  end
end
