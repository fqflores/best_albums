Rails.application.routes.draw do
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
