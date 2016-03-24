require "pomodoro/gui/version"
require "pomodoro/gui/window"

module Pomodoro
  module Gui

    def self.init(options={})
      begin
        window = Pomodoro::Gui::Window.new(options)
        window.show
      rescue Interrupt => e
        puts "\r Something goes wrong! :("
      end
    end

  end
end
