module Sooner
  class InstallGenerator < Rails::Generators::Base
    desc "Creates a Sooner initializer and migration to your application."
    def self.source_root
      @_sooner_source_root ||= File.expand_path("../templates", __FILE__)
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