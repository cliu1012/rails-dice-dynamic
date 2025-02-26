Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "homepage" })
  get("/dice/:number/:sides", { :controller => "dice", :action => "dynamic_roll" })
end
