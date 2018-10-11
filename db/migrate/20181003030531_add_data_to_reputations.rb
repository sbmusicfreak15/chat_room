class AddDataToReputations < ActiveRecord::Migration[5.2]
  def self.up
    add_column :rs_reputations, :data, :text
  end

  def self.down
    remove_column :rs_reputations, :data
  end
end
