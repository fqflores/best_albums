class ArtistsController < ApplicationController
  def index
    @artists = Artist.all

    render("artist_templates/index.html.erb")
  end

  def show
    @artist = Artist.find(params.fetch("id_to_display"))

    render("artist_templates/show.html.erb")
  end

  def new_form
    @artist = Artist.new

    render("artist_templates/new_form.html.erb")
  end

  def create_row
    @artist = Artist.new

    @artist.name = params.fetch("name")
    @artist.bio = params.fetch("bio")
    @artist.image = params.fetch("image")

    if @artist.valid?
      @artist.save

      redirect_back(:fallback_location => "/artists", :notice => "Artist created successfully.")
    else
      render("artist_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @artist = Artist.find(params.fetch("prefill_with_id"))

    render("artist_templates/edit_form.html.erb")
  end

  def update_row
    @artist = Artist.find(params.fetch("id_to_modify"))

    @artist.name = params.fetch("name")
    @artist.bio = params.fetch("bio")
    @artist.image = params.fetch("image")

    if @artist.valid?
      @artist.save

      redirect_to("/artists/#{@artist.id}", :notice => "Artist updated successfully.")
    else
      render("artist_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @artist = Artist.find(params.fetch("id_to_remove"))

    @artist.destroy

    redirect_to("/artists", :notice => "Artist deleted successfully.")
  end
end
