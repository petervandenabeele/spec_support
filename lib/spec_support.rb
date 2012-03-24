module SpecSupport

  spec_support_path = File.join(File.expand_path(File.dirname(__FILE__)),'spec_support')

  $LOAD_PATH.unshift(spec_support_path)

  require 'check_all_columns'
  require 'delete_nil_values'

end
