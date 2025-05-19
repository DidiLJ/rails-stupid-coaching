class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ""

    if @question.include?("I AM GOING TO WORK RIGHT NOW!") || @question.include?("I am going to work right now!")
      @answer = "Great"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
