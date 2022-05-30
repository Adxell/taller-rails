Rails.application.routes.draw do
  resources :consultas_usuarios
  resources :detalles
  resources :multa
  resources :libros
  resources :prestamos
  resources :usuarios
  resources :consulta
  resources :prestamos do
    resources :multa
  end
  resources :prestamos do
    resources :detalles
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
