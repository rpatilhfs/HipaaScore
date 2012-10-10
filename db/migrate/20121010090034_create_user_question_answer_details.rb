class CreateUserQuestionAnswerDetails < ActiveRecord::Migration
  def change
    create_table :user_question_answer_details do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :answer

      t.timestamps
    end
  end
end
