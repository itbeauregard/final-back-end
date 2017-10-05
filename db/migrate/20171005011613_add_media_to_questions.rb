class AddMediaToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :media, :string
  end
end
