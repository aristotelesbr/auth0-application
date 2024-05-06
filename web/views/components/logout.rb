# frozen_string_literal: true

class Views::Components::Logout < Phlex::HTML
  def view_template
    form(action: '/auth/logout', method: 'post') do
      button(type: 'submit') { plain('Sair') }
    end
  end
end
