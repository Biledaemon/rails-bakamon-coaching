class QuestionsController < ApplicationController

def ask

end

def answer
  answer1 = "I don't care, get dressed and go to work!"
  answer2 = 'Silly question, get dressed and go to work!'
  answer3 = 'Great!'
  @question = params[:question]
    if @question.present?
      if @question.downcase == 'i am going to work right now!'
        @answer = answer3
      elsif @question.include? '?'
        @answer = answer2
      else
        @answer = answer1
      end
    end
end

end
