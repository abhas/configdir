require "configdir/version"

module Configdir

  def self.read(configdir)
    @cfgdir = Hash.new
    Dir.foreach(configdir) do |conf|
      next if conf == '.' or conf == '..'
      @cfgdir[conf] = File.open(configdir + "/" + conf).first.chomp
    end
    return @cfgdir
  end

  def self.write(configdir, s)
    @settings = s
    @settings.keys.each do |file|
      f = File.open(configdir + "/" + file, "w")
      f.write(@settings[file])
      f.close
    end
  end

end
