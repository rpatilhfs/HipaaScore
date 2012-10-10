class Question < ActiveRecord::Base
  attr_accessible :description, :question, :status, :sub_section_id
  belongs_to :sub_sections
end
