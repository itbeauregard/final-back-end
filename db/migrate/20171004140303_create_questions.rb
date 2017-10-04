class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :location
      t.text :ask
      t.text :first_choice
      t.text :second_choice
      t.text :third_choice
      t.text :fourth_choice
      t.text :fifth_choice
      t.string :correct_choice

      t.timestamps
    end
  end
end
