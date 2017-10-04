class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :location, :ask, :first_choice, :second_choice, :third_choice, :fourth_choice, :fifth_choice, :correct_choice
end
