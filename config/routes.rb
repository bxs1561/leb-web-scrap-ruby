Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/scrapping', to:'webs#scrap'
  get '/scrap', to:'webs#webs_scrap'


end
