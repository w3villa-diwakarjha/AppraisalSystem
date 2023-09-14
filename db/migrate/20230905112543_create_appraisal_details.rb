class CreateAppraisalDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :appraisal_details do |t|
      t.references :appraisal, null: false, foreign_key: true
      t.references :kra, null: false, foreign_key: true
      t.integer :appraisee_marks
      t.integer :appraiser_marks
      t.text :appraiser_comments

      t.timestamps
    end
  end
end
