class UserQuestionAnswerDetail < ActiveRecord::Base
  attr_accessible :answer, :question_id, :user_id
end
