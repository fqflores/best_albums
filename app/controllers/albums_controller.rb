class AlbumsController < ApplicationController
  def index
    @albums = Album.page(params[:page]).per(10)

    render("album_templates/index.html.erb")
  end

  def show
    @rating = Rating.new
    @album = Album.find(params.fetch("id_to_display"))

    render("album_templates/show.html.erb")
  end

  def new_form
    @album = Album.new

    render("album_templates/new_form.html.erb")
  end

  def create_row
    @album = Album.new

    @album.title = params.fetch("title")
    @album.year = params.fetch("year")
    @album.image = params.fetch("image")
    @album.artist_id = params.fetch("artist_id")
    @album.genre = params.fetch("genre")

    if @album.valid?
      @album.save

      redirect_back(:fallback_location => "/albums", :notice => "Album created successfully.")
    else
      render("album_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_artist
    @album = Album.new

    @album.title = params.fetch("title")
    @album.year = params.fetch("year")
    @album.image = params.fetch("image")
    @album.artist_id = params.fetch("artist_id")
    @album.genre = params.fetch("genre")

    if @album.valid?
      @album.save

      redirect_to("/artists/#{@album.artist_id}", notice: "Album created successfully.")
    else
      render("album_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @album = Album.find(params.fetch("prefill_with_id"))

    render("album_templates/edit_form.html.erb")
  end

  def update_row
    @album = Album.find(params.fetch("id_to_modify"))

    @album.title = params.fetch("title")
    @album.year = params.fetch("year")
    @album.image = params.fetch("image")
    @album.artist_id = params.fetch("artist_id")
    @album.genre = params.fetch("genre")

    if @album.valid?
      @album.save

      redirect_to("/albums/#{@album.id}", :notice => "Album updated successfully.")
    else
      render("album_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_director
    @album = Album.find(params.fetch("id_to_remove"))

    @album.destroy

    redirect_to("/artists/#{@album.artist_id}", notice: "Album deleted successfully.")
  end

  def destroy_row
    @album = Album.find(params.fetch("id_to_remove"))

    @album.destroy

    redirect_to("/albums", :notice => "Album deleted successfully.")
  end
end
