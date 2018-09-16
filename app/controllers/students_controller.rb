class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
   @post.title = params[:title]
   @post.description = params[:description]
   @post.save
   redirect_to post_path(@post)
  end

end
