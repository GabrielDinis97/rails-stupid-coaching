class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer1]

    if params[:question] == 'I am going to work'
      @question = 'Great!'
    else
      if params[:question].include? '?'
        @question = 'Silly question, get dressed and go to work!'
      else
        @question = 'I dont care, get dressed and go to work!'
      end
    end
  end
end
