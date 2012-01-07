describe "Files" do
  it "spec/support directory exists" do
    File.exist?('spec/support').should be_true
  end

  it "spec/support/check_all_columns.rb exists" do
    File.exist?('spec/support/check_all_columns.rb').should be_true
  end
end
