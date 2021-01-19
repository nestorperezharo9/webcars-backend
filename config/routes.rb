Rails.application.routes.draw do
  
    get '/reviews/:id/specifications', :to => 'reviews#specifications'
    get '/reviews/combustion', :to => 'reviews#combustion'
    get '/reviews/electricos', :to => 'reviews#electricos'
    get '/homepage', :to => 'reviews#recent'
    get '/noticias', :to => 'articles#actualidad'
    get '/futuro', :to => 'articles#futuro'
    
    resources :reviews

    resources :articles

  end