# frozen_string_literal: true

module Middlewares
  class Flash
    class FlashRuntimeError < RuntimeError; end

    def initialize(app)
      @app = app
    end

    def call!(env)
      session = env['rack.session'] || raise(FlashRuntimeError, 'Session Rack::Session::Cookie is required')
      flash = session['flash'] ||= {}

      response = @app.call(env)

      flash&.clear

      response
    end

    def call(env)
      dup.call!(env)
    end
  end
end
