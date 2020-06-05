class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :wine, foreign_key: true
      t.references :enologist, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
