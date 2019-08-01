class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end

  def show

  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    # byebug
    @duck = Duck.create(duck_params)
    # @duck.save
    # redirect_to duck_path(@duck)
    redirect_to ducks_path
  end

  def edit
    @students = Student.all
  end

  def update
    @duck.update(duck_params)
    # @duck.save
    redirect_to @duck
  end

  private

  def find_duck
    @duck = Duck.find(params[:id])
  end

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

end
