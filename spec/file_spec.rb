describe "Files" do
  it "check_all_columns.rb exists" do
    File.exist?('lib/spec_support/check_all_columns.rb').should be_true
  end
end
