require 'rubygems/package'

module Archiver
  class Archiver
    def self.create_archive_from_locales locales
      tar = StringIO.new
      Gem::Package::TarWriter.new( tar ) do | writer |
        locales.each do |locale|
          writer.add_file("#{locale.name}.yml", '0644') do | file |
            file.write locale.to_yaml
          end
        end
      end
      tar.seek 0 
      tar.string.bytes.to_a.pack("C*")
    end

    # def self.create_archive_from_locales locales
    #   buffer = ''
    # 
    #   Zip::Archive.open_buffer( buffer, Zip::CREATE) do |archive|
    #     locales.each do |locale| 
    #       archive.add_buffer( "#{locale.name}.yml", locale.to_yaml ) 
    #     end 
    #   end
    # 
    #   buffer
    # end
  end
end
