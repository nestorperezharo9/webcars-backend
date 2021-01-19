class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :body
      t.string :picture_url
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
