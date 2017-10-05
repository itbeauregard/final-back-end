class UserAnswerSerializer < ActiveModel::Serializer
  attributes :id, :complete
  has_one :user
  has_one :question
end
