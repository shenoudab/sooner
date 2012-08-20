module Sooner
  class Subscriber
    include Mongoid::Document
    include Mongoid::Timestamps

    field :name
    field :email

    validates :email, :presence => true, :uniqueness => true
    validates :name, :presence => true, :if => :name_required

    validates_format_of :email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
    
    def name_required
      Sooner.name_required
    end

    def save_csv
      begin
        file = File.open("public/#{ Sooner.csv_file.nil? ? 'subscribers.csv' : Sooner.csv_file }", "a")
        if Sooner.name_required
        file << "#{ name },#{ email }\n"
        else
        file << "#{ email }\n"
        end
        file.close
        return true
      rescue Exception => e
      self.errors.add_to_base(e.message + " (CSV)")
      end
    end
  end
end
