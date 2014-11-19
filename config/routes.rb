Rails.application.routes.draw do
    get 'welcome/index'
    resources :consultants
    resources :customers do
        resources :projects
    end
    root 'welcome#index'
end
