module Axlsx

  # Page setup properties of the worksheet
  # This class name is not a typo, its spec.
  class TabColor

    # The color for this tab bar
    # @return [Color]
    # @see Color
    attr_reader :color

    # creates a new page setup properties object
    # @param [Color] color
    def initialize(color)
       self.color = color
    end

    # @see color
   # def color=(v) DataTypeValidator.validate "GradientStop.color", Color, v; @color=v end
    def color=(v) @color=v end

    # serialize to xml
    def to_xml_string(str = '')
      str << ('<tabColor>')
      self.color.to_xml_string(str)
      str << '</tabColor>'
    end
  end
end
