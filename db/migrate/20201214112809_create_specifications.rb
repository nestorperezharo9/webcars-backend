class CreateSpecifications < ActiveRecord::Migration[6.0]
  def change
    create_table :specifications do |t|
      t.string :prestacion
      t.string :valor
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
