Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
	namespace "api" do
		namespace "v1" do
			mount_devise_token_auth_for 'User', at: 'auth'
			get 'welcome', :to => "welcome#index"
			get 'custom_error', :to => 'welcome#custom_error'
      	end
    end
end

Rails.application.routes.default_url_options[:host] = 'localhost:3000'