module SpecSupport
  module QueryParams

    def has_query_params?(k,v)
      return false unless k && k.match(/[^\s]/)
      r = Regexp.new("(^|&|&amp;)#{k}=#{v}($|&|&amp;)")
      r.match(self)
    end

  end
end

