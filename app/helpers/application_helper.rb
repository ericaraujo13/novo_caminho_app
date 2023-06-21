# frozen_string_literal: true

module ApplicationHelper
  def inactive_active_class_for(paths)
    paths = [paths].flatten

    return 'bg-red-500 text-white' if paths.any? { |path| is_active_link?(path, :exact) }

    'text-black'
  end
end
