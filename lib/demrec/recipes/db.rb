Capistrano::Configuration.instance(:must_exist).load do
  namespace :demrec do
    namespace :db do

      desc "Backup the database"
      task :backup do
        puts "Capistrano is backing up db"
      end

    end
  end
end
