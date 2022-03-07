class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  # Input form to create model instance.
  def new
    @kitten = Kitten.new
  end

  # Save model instance to DB.
  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      redirect_to kittens_path, notice: 'Kitten created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Input form to edit model instance.
  def edit
  end

  # Save changes to model instance to DB.
  def update
    if @kitten.update(kitten_params)
      redirect_to kitten_url(@kitten), notice: 'Kitten updated!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy

    redirect_to :root, notice: 'Kitten destroyed.'
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :age, :softness, :cuteness)
  end
end

