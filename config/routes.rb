Rails.application.routes.draw do
  get("/", {:controller => "zebra", :action => "home"})
  get("/:player_move", {:controller => "zebra", :action => "play"})
  #get("/paper", {:controller => "zebra", :action => "paper"})
  #get("/scissors", {:controller => "zebra", :action => "scissors"})
end
