require "demrec/version"

if defined?(Capistrano)
  Dir.glob("#{File.dirname(__FILE__)}/demrec/recipes/*.rb").each { |t| require t }
elsif defined?(Rake)
  Dir.glob("#{File.dirname(__FILE__)}/demrec/recipes/*.rake").each { |t| import t }
end
