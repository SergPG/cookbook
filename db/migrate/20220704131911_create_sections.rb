class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.text :body
      t.integer :position, default: 0
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
