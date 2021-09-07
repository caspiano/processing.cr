require "../../src/processing"

class Sketch < Processing::Sketch
  def setup
    size(400, 200)
    surface.set_title "Hello World"
  end

  def draw
    background(51)
    stroke(255, 0, 0)
    rect(20, 20, 100, 100)
  end
end

Sketch.run
