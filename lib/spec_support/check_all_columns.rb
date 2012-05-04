# FIXME scope this to an RSpec sub module
def check_all_columns(instance)
  instance.class.columns.each do |column|
    val = instance.send(:"#{column.name}")
    puts "\n WARNING: empty column for #{column.name}" if val.nil?
    val.should_not be_nil
  end
end
