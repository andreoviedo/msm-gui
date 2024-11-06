Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  post("/insert_director", { :controller => "directors", :action => "create" })
  get("/delete_director/:an_id", { :controller => "directors", :action => "destroy" })
  post("/modify_director/:the_id", { :controller => "directors", :action => "update" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/insert_movie", { :controller => "movies", :action => "create" })
  get("/delete_movie/:an_id", { :controller => "movies", :action => "destroy" })
  post("/modify_movie/:the_id", { :controller => "movies", :action => "update" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  post("/insert_actor", { :controller => "actors", :action => "create" })
  get("/delete_actor/:an_id", { :controller => "actors", :action => "destroy" })
  post("/modify_actor/:the_id", { :controller => "actors", :action => "update" })
end
