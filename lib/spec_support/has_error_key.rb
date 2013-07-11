require 'active_model'

module ActiveModel
  class Errors

    def has_error_key?(attribute, key, options = {})
      self[attribute].include?(self.generate_message(attribute, key, options))
    end

  end
end
