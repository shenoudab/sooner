class SoonerCreateSubscribers < ActiveRecord::Migration
  def self.up
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      #Any additional fields here

      t.timestamps
    end
    
    add_index :subscribers, :name, :unique => true
    add_index :subscribers, :email, :unique => true
  end

  def self.down
    drop_table :subscribers
  end
end