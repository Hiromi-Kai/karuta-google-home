#TODO 違うゲームを識別するために継承クラスを作る
class Karuta < ApplicationRecord
  def question
    question_pron || question_text
  end

  def answer
    answer_pron || answer_text
  end

  def speech(context, user_answer: nil)
    case context
      when :question
        "<speak>読み上げます。#{self.question}</speak>"
      when :answer
        "<speak>#{answer_judge(user_answer)}。#{true_answer_text}</speak>"
    end
  end

  def display_text(context, user_answer: nil)
    case context
      when :question
        "読み上げます。#{self.question_text}"
      when :answer
        "#{answer_judge(user_answer)}！#{true_answer_text}"
    end
  end

  def correct_answer?(user_answer)
    user_answer == anser_pron || user_answer == answer_text
  end

  def answer_judge(answer)
    if correct_answer?(answer)
      "正解"
    else
      "不正解"
    end
  end

  def true_answer_text
    "正解は#{answer}です。"
  end
end