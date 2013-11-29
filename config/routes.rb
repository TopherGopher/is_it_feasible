IsItFeasible::Application.routes.draw do
  resources :reviews

  resources :proposals

	devise_for :users, :path => "auth", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :registration => 'register', :sign_up => 'cmon_let_me_in' }

	root :to => 'user#dashboard'

	namespace :user do
		resources :proposals, :reviews
		root :to => 'user#dashboard'
	end
end