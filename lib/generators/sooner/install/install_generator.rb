module Sooner
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    desc "Creates a Sooner initializer and migration to your application."
    def self.source_root
      @_sooner_source_root ||= File.expand_path("../templates", __FILE__)
    end

    def self.orm_has_migration?
      Rails::Generators.options[:rails][:orm] == :active_record
    end

    def self.next_migration_number(dirname)
      if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
      else
      "%.3d" % (current_migration_number(dirname) + 1)
      end
    end

    class_option :orm
    class_option :migration, :type => :boolean, :default => orm_has_migration?

    def create_migration_file
      migration_template 'migration.rb', 'db/migrate/sooner_create_subscribers.rb'
    end

    def copy_initializer
      template "sooner.rb", "config/initializers/sooner.rb"
    end

    def show_readme
      readme "README"
    end

    protected

    def readme(path)
      say File.read(File.expand_path(path, self.class.source_root))
    end
  end
end