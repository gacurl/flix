Rails.application.routes.draw do
  # verb "url" => "name_of_controller#name_of_action"
  get "movies" => "movies#index"
end
