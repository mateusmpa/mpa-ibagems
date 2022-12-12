class PictureUploadsController < ApplicationController
  def new
    @ibagem = Ibagem.find(params[:ibagem_id])
  end

  def create
    @ibagem = Ibagem.find(params[:ibagem_id])
    @ibagem.pictures.attach(params[:ibagem][:pictures])
    redirect_to ibagem_path(@ibagem)
  end

  def destroy
    @ibagem = Ibagem.find(params[:ibagem_id])
    @ibagem.pictures.find(params[:id]).purge
    redirect_to ibagem_path(@ibagem)
  end
end
