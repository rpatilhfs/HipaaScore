class CreateSubSections < ActiveRecord::Migration
  def change
    create_table :sub_sections do |t|
      t.integer :section_id
      t.string :sub_section_name
      t.string :display_name
      t.string :status

      t.timestamps
    end
  end
end
