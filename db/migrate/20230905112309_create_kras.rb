class CreateKras < ActiveRecord::Migration[6.1]
  def change
    create_table :kras do |t|
      t.string :title
      t.text :description
      t.integer :max_marks
      t.references :designation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
