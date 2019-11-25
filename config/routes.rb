Rails.application.routes.draw do
  # Routes for the Artist resource:

  # CREATE
  get("/artists/new", { :controller => "artists", :action => "new_form" })
  post("/create_artist", { :controller => "artists", :action => "create_row" })

  # READ
  get("/artists", { :controller => "artists", :action => "index" })
  get("/artists/:id_to_display", { :controller => "artists", :action => "show" })

  # UPDATE
  get("/artists/:prefill_with_id/edit", { :controller => "artists", :action => "edit_form" })
  post("/update_artist/:id_to_modify", { :controller => "artists", :action => "update_row" })

  # DELETE
  get("/delete_artist/:id_to_remove", { :controller => "artists", :action => "destroy_row" })

  #------------------------------

  # Routes for the Album resource:

  # CREATE
  get("/albums/new", { :controller => "albums", :action => "new_form" })
  post("/create_album", { :controller => "albums", :action => "create_row" })

  # READ
  get("/albums", { :controller => "albums", :action => "index" })
  get("/albums/:id_to_display", { :controller => "albums", :action => "show" })

  # UPDATE
  get("/albums/:prefill_with_id/edit", { :controller => "albums", :action => "edit_form" })
  post("/update_album/:id_to_modify", { :controller => "albums", :action => "update_row" })

  # DELETE
  get("/delete_album/:id_to_remove", { :controller => "albums", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
