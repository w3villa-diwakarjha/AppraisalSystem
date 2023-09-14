class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :designation, null: false, foreign_key: true
      t.string :email
      t.date :date_of_joining
      t.text :address

      t.timestamps
    end
  end
end
