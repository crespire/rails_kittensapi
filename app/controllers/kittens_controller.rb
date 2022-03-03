class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  # Input form to create model instance.
  def new
  end

  # Save model instance to DB.
  def create
  end

  # Input form to edit model instance.
  def edit
  end

  # Save changes to model instance to DB.
  def update
  end

  def destroy
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :softness, :cuteness)
  end
end

