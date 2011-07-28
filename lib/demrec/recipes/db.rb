Capistrano::Configuration.instance(:must_exist).load do
  namespace :demrec do
    namespace :db do

      desc "Backup the database"
      task :backup do
        puts "Backing up database with Capistrano"
      end

    end
  end
end
