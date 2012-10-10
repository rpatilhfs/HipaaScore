class Section < ActiveRecord::Base
  attr_accessible :display_name, :section_name, :status
  has_many :sub_sections
end
