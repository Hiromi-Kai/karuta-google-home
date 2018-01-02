class Karuta < ApplicationRecord
  def question
    question_pron || question_text
  end

  def answer
    answer_pron || answer_text
  end

  def speech
    "<speak>読み上げます。#{self.question}</speak>"
  end
  
  def display_text
    "読み上げます。#{self.question_text}"
  end
end