# frozen_string_literal: true

class Views::Components::Header < Phlex::HTML
  def initialize(title: 'Header')
    @title = title
  end

  def view_template
    header do
      h1 do
        plain(@title)
      end

    end
  end
end
