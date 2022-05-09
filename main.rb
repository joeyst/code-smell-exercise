def draw_button(button, is_dark_mode)
  adjusted_button = button.adjust_color(is_dark_mode)
  if is_dark_mode
    # darken foreground color for dark mode
    paint(button, adjusted_button.foreground_color, background_color(is_dark_mode))
  else
    # lighten foreground color for non-dark mode
    paint(button, adjusted_button.foreground_color, background_color(is_dark_mode))
  end
end

def background_color(is_dark_mode=nil)
  if is_dark_mode
    '#111111'
  else
    '#E0E0E0'
  end
end

class Button
  attr_reader :label_text, :x, :y, :foreground_color
  def initialize(label_text, x, y, foreground_color=nil)
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
  end

  def adjust_color(is_dark_mode)
    adjusted_button = self.dup
    if is_dark_mode
      adjusted_button.foreground_color -= 10
    else
      adjusted_button.foreground_color += 10
    end
    adjusted_button
  end
end