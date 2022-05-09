def draw_button(button, foreground_color, is_dark_mode)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(button, foreground_color - 10, '#111111')
  else
    # lighten foreground color for non-dark mode
    paint(button, foreground_color + 10, '#E0E0E0')
  end
end

def background_color
end

class Button
  attr_reader :label_text, :x, :y
  def initialize(label_text, x, y)
    @label_text = label_text
    @x = x
    @y = y
  end
end