class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def show
    @albums = Album.find(params[ :id])  
  end


  def new
    @albums = Album.new
  end

  def edit
    @albums = Album.find(params[:id])
  end

  def create
    @albums = Album.new(article_params)

    if @albums.save
      redirect_to @albums
    else
      render 'new'
    end
  end

  def update
    @albums = Album.find(params[:id])

    if @albums.update (article_params)
      redirect_to @albums
    else
      render 'edit'
    end
  end

  def destroy
    @albums = Album.find(params[:id])
    @albums.destroy

    redirect_to albums_path
  end

  private
    def album_params
      params.require(:albums) .permit(:title, :artist, :year_released)
    end

end






