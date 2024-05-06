# frozen_string_literal: true

require 'dotenv/load'

require 'dry/system'
require 'lennarb'
require 'phlex'
require 'zeitwerk'

class Auth0 < Dry::System::Container
  use :env, inferrer: -> { ENV.fetch('APP_ENV', 'development').to_sym }
  use :zeitwerk

  configure do |config|
    config.root = Pathname('..').expand_path(__dir__)

    config.component_dirs.add 'lib'
    config.component_dirs.add 'system'
    config.component_dirs.add 'web'
  end
end
