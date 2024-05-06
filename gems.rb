# frozen_string_literal: true

source 'https://rubygems.org'

# [https://rubygems.org/gems/lennarb]
# Lennarb is a simple and lightweight web router for Ruby
gem 'lennarb'
# [https://rubygems.org/gems/omniauth]
# A generalized Rack framework for multiple-provider authentication
gem 'omniauth', '~> 2.1'
# [https://rubygems.org/gems/omniauth-auth0]
# OmniAuth strategy for Auth0
gem 'omniauth-auth0', '~> 3.1'
# [https://rubygems.org/gems/rack-protection]
# Rack middleware for protecting against typical web attacks
gem 'rack-protection', '~> 4.0'
# [https://rubygems.org/gems/rackup]
# Rackup is a simple way to run Rack applications
gem 'rackup', '~> 2.1'
# [https://rubygems.org/gems/rack-session]
# Rack middleware for session management
gem 'rack-session', '~> 2.0'
# [https://rubygems.org/gems/bigdecimal]
# Provides arbitrary-precision floating point decimal arithmetic
gem 'bigdecimal', '~> 3.1'
# [https://rubygems.org/gems/phlex]
# Phlex is a simple and lightweight web framework for Ruby
gem 'phlex', '~> 1.9'
# [https://rubygems.org/gems/zeitwerk]
# A code loader for Ruby
gem 'zeitwerk', '~> 2.6'
# [http://rubygems.org/gems/dotenv]
# Dotenv is a Ruby gem to load environment variables from a .env file
gem 'dotenv', '~> 3.1'
# [https://rubygems.org/gems/dry-system]# dry-system is a Ruby gem that provides a simple and powerful way to build applications
gem 'dry-system', '~> 1.0', '>= 1.0.1'
# [https://rubygems.org/gems/dry-configurable]
# A simple and powerful configuration system for Ruby
gem 'dry-configurable', '~> 1.1'

group :development do
  # [https://rubygems.org/gems/debug]
  # Debug is a simple and lightweight debugging tool for Ruby
  gem 'debug', '~> 1.9'
end

