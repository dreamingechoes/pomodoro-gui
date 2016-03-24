require 'gosu'

module Pomodoro
  module Gui
    class Window < Gosu::Window

      IMAGE_ASSETS = {
        background: "assets/images/background.png",
        pomodoro: "assets/images/pomodoro.png",
        occupied: "assets/images/occupied.png",
        rest: "assets/images/rest.png"
      }

      AUDIO_ASSETS = {
        start: "assets/sounds/start.wav",
        rest: "assets/sounds/rest.wav"
      }

      FONT_ASSETS = {
        font: "assets/fonts/roboto.ttf",
        bold: "assets/fonts/roboto_bold.ttf"
      }

      def initialize(options={})
        super 304, 488

        @images = {}
        @audio = {}
        @interval = options[:interval]
        @rest = options[:rest]
        @state = 0
        @cycles = 0

        self.caption = "Pomodoro GUI"
        self.load_assets
        self.reset_timer
      end

      def launch!
        self.show
      end

      def draw
        @images[:background].draw(0, 0, 0)
        @images[:pomodoro].draw(32, 16, 1)

        if @state == 0
          @images[:occupied].draw(104, 364, 1)
        else
          @images[:rest].draw(104, 364, 1)
        end

        @font.draw("Pomodoro ##{@cycles.to_s.rjust(2, '0')}", 78, 268, 3, 1, 1, Gosu::Color::BLACK)
        @font_time.draw("#{(@t + @seconds).strftime('%M:%S')}", 92, 292, 3, 1, 1, @timer_colour)
      end

      def update
        if @seconds == 0
          @state = @state == 0 ? 1 : 0
          self.reset_timer
        else
          @tick += 1
          if @tick == 60
            @seconds -= 1
            @tick = 0
          end
        end
      end

      def needs_cursor?
        true
      end

      protected

      def load_assets
        IMAGE_ASSETS.each do |key, value|
          @images[key] = Gosu::Image.new(File.join(Pomodoro::Gui.root, "..", value))
        end

        AUDIO_ASSETS.each do |key, value|
          @audio[key] = Gosu::Song.new(self, File.join(Pomodoro::Gui.root, "..", value))
        end

        @font = Gosu::Font.new(self, File.join(Pomodoro::Gui.root, "..", FONT_ASSETS[:font]), 32)
        @font_time = Gosu::Font.new(self, File.join(Pomodoro::Gui.root, "..", FONT_ASSETS[:bold]), 64)
      end

      def reset_timer
        if @state == 0
          @seconds = @interval * 60
          @timer_colour = Gosu::Color::RED
          @cycles += 1
          @audio[:start].play
        else
          @seconds = @rest * 60
          @timer_colour =  Gosu::Color::GREEN
          @audio[:rest].play
        end

        @t = Time.new(0)
        @tick = 0
      end

    end
  end
end
