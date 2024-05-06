# frozen_string_literal: true

class Providers::Credentials
  Auth0.register_provider(:credentials) do
    start do
      register(:credentials, Auth0::Settings::Configuration.config)
    end
  end
end
