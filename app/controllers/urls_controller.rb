class UrlsController < ApplicationController
  def index
   @urls = Url.all
    render :index
  end

  def new
    @url = Url.new(url_params)
  end

  def create 
    @url = Url.create(url_params)

    redirect_to root_path
  end

  def destroy
    @urls = Url.find(params[:id]).destroy

    redirect_to root_path
  end

  def show

  end

  private

  def url_params
    url_params = params.require(:url).permit(:title, :url)
  end
end
