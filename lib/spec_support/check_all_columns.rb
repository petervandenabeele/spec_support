def check_all_columns(instance)
  instance.class.columns.each do |column|
    it "has data in #{column.name} column" do
      instance.send(:"#{column.name}").should_not be_nil
    end
  end
end
