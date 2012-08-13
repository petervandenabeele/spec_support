module SpecSupport
  module QueryParams

    def has_query_params?(k,v)
      return false unless k && k.match(/[^\s]/)
      k_esc = Regexp.escape(k)
      v_esc = Regexp.escape(v)
      r = Regexp.new("(^|&|&amp;|[?])#{k_esc}=#{v_esc}($|&|&amp;|\")")
      r.match(self)
    end

  end
end

