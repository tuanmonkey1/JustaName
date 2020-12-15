class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :title
      t.text :content
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end