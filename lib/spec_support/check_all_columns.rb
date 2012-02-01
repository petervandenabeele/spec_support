# FIXME scope this to an RSpec sub module
def check_all_columns(instance)
  instance.class.columns.each do |column|
    instance.send(:"#{column.name}").should_not be_nil
  end
end
