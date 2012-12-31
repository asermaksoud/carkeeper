class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string  :login,               :null => false
      t.string 	:first
      t.string 	:last
      t.string  :crypted_password,    :null => false
      t.string  :password_salt,       :null => false
      t.string  :persistence_token,   :null => false
      t.boolean	:admin
      t.string 	:mobile
      t.string 	:tel
      t.text 	:address
      t.string 	:id
      t.string 	:mail

      t.timestamps
    end
  end
  def self.down  
    drop_table :users  
  end
end
