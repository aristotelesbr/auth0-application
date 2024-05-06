# frozen_string_literal: true

module Controllers::Oauth
  module_function

  def callback(req, res)
    auth_info = req.env['omniauth.auth']
    req.session[:userinfo] = auth_info['extra']['raw_info']

    res.redirect('/dashboard')
  end

  def failure(_req, res)
    res.status = 401
    res.html('Auth failed')
  end

  def logout(req, res)
    req.session.clear

    res.redirect('/')
  end
end
