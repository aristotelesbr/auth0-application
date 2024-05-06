# frozen_string_literal: true

module Controllers::Dashboard
  module_function

  def index(req, res)
    content = ::Views::Pages::Dashboard.new(session: req.session).call

    res.status = 200
    res.html(content)
  end
end
