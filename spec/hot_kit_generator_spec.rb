require 'rspec'
require_relative '../lib/hot_kit_generator'
describe "HotKitGenerator" do
  before(:each) do
    @root_dir = "tmp/test_kit"
    @dir_config = 'lib/meta/directory_structure.yml'
    if File.exists? @root_dir
      puts "#{'='*80}"
      puts "** UNABLE TO RUN SPEC **\n>> Please remove '#{@root_dir}' before running the specs <<"
      puts "#{'='*80}"
      exit
    end
  end

  it "creates directories via project configuration" do
    HotKitGenerator.build(@root_dir, @dir_config)
  end
end