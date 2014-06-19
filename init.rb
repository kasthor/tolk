Mime::Type.register_alias "text/yaml", :yml

require 'zipruby'

$KCODE = 'UTF8'
begin
  require 'ya2yaml'
rescue LoadError => e
  Rails.logger.debug "[Tolk] Could not load ya2yaml"
end
