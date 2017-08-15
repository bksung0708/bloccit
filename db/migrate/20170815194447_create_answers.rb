class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :body
      t.reference :question

      t.timestamps
    end
  end
end
