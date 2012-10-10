class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :sub_section_id
      t.text :question
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
