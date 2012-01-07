module SpecSupport

  if Rails.env.test?
    require 'spec_support/check_all_columns'
  end

end
