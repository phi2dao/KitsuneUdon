KitsuneUdon::Application.routes.draw do
	match '/home', :to => 'pages#home'
	get "pages/home"
	
	match '/help', :to => 'pages#help'
	get "pages/help"
	
	match '/output', :to => 'pages#output'
	get "pages/output"
	
	root :to => 'pages#home'
end
