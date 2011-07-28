Demonstraion of how to create your own cap/rake tasks gem 
=========================================================

In this demo we'll create a rubygem called 'demrec'. 

It will contain tasks for rake and capistrano that can easily be
shared between multiple projects.

Start a new gem
---------------

    gem install bundler
    bundle gem demrec
    # update demrec.gemspec
    rake install


Add recipes
-----------

    mkdir demrec/lib/demrec/recipes
    touch deprec/lib/demrec/db.{rake,rb} # Add tasks later

    # Update lib/demrec.rb
    if defined?(Capistrano)
      Dir.glob("#{File.dirname(__FILE__)}/deprec/recipes/*.rb").each { |t| 
        require t 
      }
    elsif defined?(Rake)
      Dir.glob("#{File.dirname(__FILE__)}/deprec/recipes/*.rake").each { |t| 
        import t 
      }
    end