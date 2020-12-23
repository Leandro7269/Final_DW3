Rails.application.routes.draw do
  devise_for :users
  get 'productos/nuevo', to:'productos#new' 
  post 'productos/nuevo', to:'productos#create', as: 'productos_crear' 
  get 'productos/:id/editar', to:'productos#edit', as: 'productos_editar' 
  put 'productos/editar', to:'productos#update', as: 'productos_actualizar'  
  put 'productos/:id/borrar',   to:'productos#destroy', as: 'productos_borrar'
  put 'productos/:id/activar',   to:'productos#activar', as: 'productos_activar'

  resources :rubros
  resources :marcas

  root 'productos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
