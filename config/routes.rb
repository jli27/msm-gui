Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })

  get("/insert_director", { :controller => "directors", :action => "add" })
  get("/insert_actor", { :controller => "actors", :action => "add" })
  get("/insert_movie", { :controller => "movies", :action => "add" })

  get("/update_director/:an_id", { :controller => "directors", :action => "update" })
  get("/update_actor/:an_id", { :controller => "actors", :action => "update" })
  get("/update_movie/:an_id", { :controller => "movies", :action => "update" })

  get("/delete_director/:an_id", { :controller => "directors", :action => "delete" })
  get("/delete_actor/:an_id", { :controller => "actors", :action => "delete" })
  get("/delete_movie/:an_id", { :controller => "movies", :action => "delete" })
end
