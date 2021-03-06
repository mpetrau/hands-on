class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :description
      t.integer :rating
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
