module HotKitGenerator
  ROOT_DIR='__HOT_Kit'
  DIR_CONFIG_FILE=File.join(File.expand_path("../../", __FILE__), 'meta/directory_structure.yml')

  def self.kit(dir_config)
    require 'yaml'
    kit = YAML.load_file(dir_config)
  end

  def self.build(root_dir=nil, dir_config=nil)
    kit = self.kit(dir_config || HotKitGenerator::DIR_CONFIG_FILE)
    self.make_path(root_dir || HotKitGenerator::ROOT_DIR, kit, '')
  end

  private
  def self.make_path(path, dir_hash, prefix)
    dir_hash.each_with_index do |h, i|
      depth         = path.split('/').size
      folder_count  = i.to_s.rjust(2,'0')
      prefix        = prefix.to_s.rjust(2,'0') unless prefix == '' or prefix.nil?
      curr_prefix   = prefix+folder_count

      # puts '='*60
      # puts "nesting_level => #{depth.to_s.rjust(2,'0')}"
      # puts "folder_count  => #{folder_count}"
      # puts "prefix        => #{prefix}"
      # puts "curr_prefix   => #{curr_prefix}"

      if h[1].nil?
        cmd = "mkdir -p #{File.join(path, curr_prefix+"_"+h[0])}"
        puts "RUNNING: #{cmd}\n"
        system cmd
      else
        # puts "#{File.join(path, curr_prefix+"_"+h[0])}"
        self.make_path(File.join(path, curr_prefix+"_"+h[0]), h[1], curr_prefix)
      end
    end
  end

end
