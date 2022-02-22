Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_id", { :controller => "users", :action => "show_user"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_id", { :controller => "photos", :action => "show_photo"})
end
