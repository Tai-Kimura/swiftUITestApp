#!/usr/bin/env ruby

module SjuiTools
  module SwiftUI
    class SwiftFormatter
      def self.format(code)
        lines = code.split("\n")
        formatted_lines = []
        indent_level = 0
        
        lines.each do |line|
          stripped = line.lstrip
          
          # Skip empty lines
          if stripped.empty?
            formatted_lines << ""
            next
          end
          
          # Decrease indent for closing braces
          if stripped.start_with?('}') || stripped.start_with?(')')
            indent_level -= 1 if indent_level > 0
          end
          
          # Apply current indent
          formatted_lines << ("    " * indent_level) + stripped
          
          # Increase indent for opening braces
          if stripped.end_with?('{') || 
             (stripped.end_with?('(') && !stripped.include?(')')) ||
             stripped.match(/^\s*(case|default).*:$/)
            indent_level += 1
          end
          
          # Handle single-line closures
          if stripped.match(/\{.*\}/)
            # Don't change indent for single-line closures
          elsif stripped.include?('{') && !stripped.include?('}')
            # Opening brace without closing
            indent_level += 1 unless stripped.end_with?('{')
          end
        end
        
        formatted_lines.join("\n")
      end
    end
  end
end