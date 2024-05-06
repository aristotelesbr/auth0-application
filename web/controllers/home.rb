# frozen_string_literal: true

module Controllers::Home
  module_function

  def index(req, res)
    # p Auth0['credentials']['auth0'].client_id
    content = ::Views::Pages::Home.new(session: req.session).call

    res.status = 200
    res.html(content)
  end
end
