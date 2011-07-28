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


Add tasks
---------

You can explore the source of this 'demrec' to see examples of tasks.

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


Add to your project
-------------------

    echo "gem 'demrec'" >> Gemfile

    echo "require 'demrec'" >> Rakefile
    echo "require 'demrec'" >> Capfile

    # Those last two can be omitted under certain circumstances.
