class CreateAppraisals < ActiveRecord::Migration[6.1]
  def change
    create_table :appraisals do |t|
      t.integer :appraisee_id, null: false
      t.integer :appraiser_id, null: false
      t.date :period_start
      t.date :period_end
      t.string :status
      t.text :appraisee_comments

      t.timestamps
    end
  end
end
