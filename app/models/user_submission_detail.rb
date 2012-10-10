class UserSubmissionDetail < ActiveRecord::Base
  attr_accessible :number_of_no, :number_of_remaining, :number_of_yes, :user_id
end
