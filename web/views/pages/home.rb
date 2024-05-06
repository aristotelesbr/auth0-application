# frozen_string_literal: true

class Views::Pages::Home < Phlex::HTML
  def initialize(session:)
    @session = session
    @flash   = @session['flash']
    puts @session.inspect
  end

  def view_template
    render(Views::Components::Flash.new(flash: @flash))
    render(Views::Components::Header.new(title: 'Auht0 Application'))

    div(class: 'container') do
      h3 { plain('Wellcome to Auth0 app') }

      if @session['userinfo'].nil?
        form(action: '/auth/auth0', method: 'post') do
          input(type: 'hidden', name: 'authenticity_token', value: @session['csrf'])
          button(type: 'submit') { plain('Login with Auth0') }
        end
      else
        render(
          Views::Components::Card.new(
            title: @session['userinfo']['nickname'],
            content: @session['userinfo'].inspect
          )
        )

        render(Views::Components::Logout.new)
      end
    end
  end
end
