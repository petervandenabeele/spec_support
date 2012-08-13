module SpecSupport
  module QueryParams

    def has_query_params?(k,v)
      return false unless k && k.match(/[^\s]/)
      r = Regexp.new("#{k}=#{v}")
      r.match(self)
    end

  end
end

