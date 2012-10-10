class SubSection < ActiveRecord::Base
  attr_accessible :display_name, :section_id, :status, :sub_section_name
  has_many :questions
  belongs_to :section
end
