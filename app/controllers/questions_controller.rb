class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create

  end

  def show
  end

  def edit
  end

  def destroy
    @question = Question.find(params[:id])
    if @question.destroy
      flash[:notice] = "\"#{@question.title}\" was deleted successfully."
      redirect_to questions_path
    else
      flash.now[:alert] = "There was an error deleting the question."
      render :show
    end
  end
end
