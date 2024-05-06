# frozen_string_literal: true

require 'omniauth'
require 'omniauth-auth0'
require 'rack/protection'
require 'rack/session/cookie'

module Middlewares
  module Base
    def self.included(base)
      base.use Rack::Session::Cookie, secret: ENV.fetch('SESSION_SECRET', 'secret')
      base.use Middlewares::Flash
      base.use Rack::Protection
      base.use OmniAuth::Builder do
        provider :auth0,
                 Auth0['credentials']['auth0'].client_id,
                 Auth0['credentials']['auth0'].client_secret,
                 Auth0['credentials']['auth0'].domain,
                 callback_path: Auth0['credentials']['auth0'].callback_path,
                 authorize_params: { scope: 'openid profile email' }
      end
    end
  end
end
