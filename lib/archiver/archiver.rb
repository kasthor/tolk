require 'zipruby'

module Archiver
  class Archiver
    def self.create_archive_from_locales locales
      buffer = ''
    
      Zip::Archive.open_buffer( buffer, Zip::CREATE) do |archive|
        locales.each do |locale| 
          archive.add_buffer( "#{locale.name}.yml", locale.to_yaml ) 
        end 
      end
    
      buffer
    end
  end
end
