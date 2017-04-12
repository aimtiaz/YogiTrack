class CsearchesController < ApplicationController

  def new
    @csearch = Csearch.new


  end

  def create
    @csearch = Csearch.create(csearch_params)
    redirect_to @csearch

  end

  def show
    @csearch = Csearch.find(params[:id])

  end

  private

  def csearch_params
    params.require(:csearch).permit(:keywords, :first, :last, :phone, :email)
  end

end
