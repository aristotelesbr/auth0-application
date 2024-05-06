# frozen_string_literal: true

class Views::Components::Card < Phlex::HTML
  def initialize(title: 'Card', content: 'This is a card')
    @title = title
    @content = content
  end

  def view_template
    div(class: 'card alskdjaskld asdajsd') do
      h2 do
        plain(@title)
      end

      p do
        plain(@content)
      end
    end
  end
end
