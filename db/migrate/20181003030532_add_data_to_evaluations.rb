class AddDataToEvaluations < ActiveRecord::Migration[5.2]
  def self.up
    add_column :rs_evaluations, :data, :text
  end

  def self.down
    remove_column :rs_evaluations, :data
  end
end