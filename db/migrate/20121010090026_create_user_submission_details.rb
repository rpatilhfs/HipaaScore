class CreateUserSubmissionDetails < ActiveRecord::Migration
  def change
    create_table :user_submission_details do |t|
      t.integer :user_id
      t.integer :number_of_yes
      t.integer :number_of_no
      t.integer :number_of_remaining

      t.timestamps
    end
  end
end
