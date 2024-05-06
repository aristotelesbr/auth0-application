# frozen_string_literal: true

class Application < Lennarb::Application::Base
  include ::Middlewares::Base

  before('/dashboard') do |context|
    if context['rack.session']['userinfo'].nil?
      context['rack.session']['flash'] = { notice: 'You need to be logged in to access this page' }

      redirect('/', 302)
    end
  end

  # App routes
  #
  get '/',                    &Controllers::Home.method(:index)
  get '/dashboard',           &Controllers::Dashboard.method(:index)
  # Oauth routes
  #
  post '/auth/logout',        &Controllers::Oauth.method(:logout)
  get '/auth/failure',        &Controllers::Oauth.method(:failure)
  get '/auth/auth0/callback', &Controllers::Oauth.method(:callback)
end
