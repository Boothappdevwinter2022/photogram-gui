Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })

  get("/users/:path_id", { :controller => "users", :action => "show_user" })

  get("/photos", { :controller => "photos", :action => "index" })

  get("/photos/:path_id", { :controller => "photos", :action => "show_photo" })
  
  get("/delete_photo/:photo_id", { :controller => "photos", :action => "delete_photo" })

  get("/insert_photo", { :controller => "photos", :action => "add_photo"})

  get("/update_photo/:path_id", { :controller => "photos", :action => "update_photo"})

  get("/insert_user", { :controller => "users", :action => "add_user"})

  get("/update_user/:path_id", { :controller => "users", :action => "update_user"})

end
