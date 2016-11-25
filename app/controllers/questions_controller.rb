class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new

    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]

    if @question.save
      flash[:notice] = "Question has been posted"
      redirect_to @question
    else
      flash.now[:alert] = "There was an error posting the question. Please try again!"
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.body = params[:question][:body]
    @question.title = params[:question][:title]
    @question.resolved = params[:question][:resolved]

    if @question.resolved == true && @question.save
      flash[:notice] = "Question was Marked Resolved"
      redirect_to @question
    elsif @question.save
      flash[:notice] = "Question was Updated... Still Waiting for an Answer"
      redirect_to @question
    else
      flash.now[:alert] = "There was an error updating the question. Please try again!"
      render :edit
    end


  end

  def destroy

    @question = Question.find(params[:id])

    if @question.resolved == true && @question.destroy
      flash[:notice] = "\"#{@question.title}\" was deleted successfully. We are glad your question was resolved!"
      redirect_to questions_path

    elsif @question.destroy
      flash[:notice] = "\"#{@question.title}\" was deleted successfully. We are sorry your question was not answered..."
      redirect_to questions_path

    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show
    end

  end

end
