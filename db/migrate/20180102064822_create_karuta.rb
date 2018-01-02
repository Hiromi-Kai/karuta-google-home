class CreateKaruta < ActiveRecord::Migration[5.1]
  def change
    create_table :karuta do |t|
      t.text :question_text
      t.text :question_pron
      t.text :answer_text
      t.text :answer_pron
      t.timestamps
    end
  end
end
