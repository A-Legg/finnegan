class GifsController < ApplicationController
  def new
   @gif = Gif.new
  end

  def create
    @gif = Gif.new
    @gif.url = params[:gif][:url]
    @gif.title = params[:gif][:title]
  if @gif.save
    flash[:test] = "Gif Created Sucessfully "
    redirect_to root_path
  else
    render gifs_new_path

  end


  end

end