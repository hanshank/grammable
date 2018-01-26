class GramsController < ApplicationController

  def index
  end

  def new
    @gram = Gram.new
  end

  def create
    @gram = Gram.new(gram_params)
    @gram.save

    if @gram.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def gram_params
    params.require(:gram).permit(:message)
  end


end
