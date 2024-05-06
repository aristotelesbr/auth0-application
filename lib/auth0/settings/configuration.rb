# frozen_string_literal: true

require 'dry/configurable'

module Auth0::Settings
  class Configuration
    extend Dry::Configurable

    setting :auth0 do
      setting :callback_path, default: '/auth/auth0/callback'
      setting :domain, default: ENV.fetch('AUTH0_DOMAIN', nil)
      setting :client_id, default: ENV.fetch('AUTH0_CLIENT_ID', nil)
      setting :client_secret, default: ENV.fetch('AUTH0_CLIENT_SECRET', nil)
    end
  end
end
