module ApplicationHelper
    def button_class(variant = :primary)
      base_classes = "w-full px-4 py-3 font-semibold rounded-lg shadow-lg focus:outline-none focus:ring-2 focus:ring-offset-2 transition-all duration-200 transform hover:scale-[1.02] active:scale-95"
      case variant
      when :primary
        "#{base_classes} bg-blue-600 text-white hover:bg-blue-700 focus:ring-blue-500"
      when :danger
        "#{base_classes} bg-red-600 text-white hover:bg-red-700 focus:ring-red-500"
      when :secondary
        "#{base_classes} bg-gray-800 text-white hover:bg-gray-900 focus:ring-gray-700"
      else
        base_classes
      end
    end
end