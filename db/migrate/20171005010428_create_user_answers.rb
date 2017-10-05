class CreateUserAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_answers do |t|
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.boolean :complete, :default => false

      t.timestamps
    end
  end
end
