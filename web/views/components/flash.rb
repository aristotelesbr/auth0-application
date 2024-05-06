# frozen_string_literal: true

class Views::Components::Flash < Phlex::HTML
  def initialize(flash:)
    @flash = flash

    require 'debug'
  end

  def view_template
    return if @flash.nil?

    div(class: 'flash') do
      
      @flash.each do |type, message|
        div(class: "flash-#{type}") do
          plain(message)
        end
      end
    
    end
  end
end
