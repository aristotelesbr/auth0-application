# frozen_string_literal: true

class Views::Pages::Dashboard < Phlex::HTML
  def initialize(session:)
    @session = session
  end

  def view_template
    render(Views::Components::Header.new(title: 'Dashboard'))

    div(class: 'container') do
      render(Views::Components::Card.new(title: 'User Info', content: "SESSION: #{@session['userinfo']}"))
    end
  end
end
