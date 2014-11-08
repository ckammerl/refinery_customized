Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :termine_aktuelles do
    resources :termine_aktuelles, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :termine_aktuelles, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :termine_aktuelles, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
