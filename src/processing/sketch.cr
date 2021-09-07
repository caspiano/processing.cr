require "./core/environment"
require "./core/structure"
require "./core/color"
require "./core/color"
require "./core/math"
require "./core/rendering"
require "./core/input/mouse"
require "./core/input/keyboard"
require "./core/input/time"

module Processing
  abstract class Sketch
    include Core::Environment
    include Core::Structure
    include Core::Color
    include Core::Math
    include Core::Rendering
    include Core::Input::Mouse
    include Core::Input::Keyboard
    include Core::Input::Time

    def self.run
      Processing.run(new)
    end

    protected property! renderer : SDL::Renderer

    getter? loop : Bool = true

    def setup
    end

    def draw
    end

    def loop
      @loop = true
    end

    def no_loop
      @loop = false
    end
  end
end
