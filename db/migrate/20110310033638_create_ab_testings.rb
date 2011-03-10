class CreateAbTestings < ActiveRecord::Migration
  def self.up
    create_table :ab_testings do |t|
      t.string :email, :limit => 60
      t.integer :test
      t.timestamps
    end
  end

  def self.down
    drop_table :ab_testings
  end
end
