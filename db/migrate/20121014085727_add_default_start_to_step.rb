class AddDefaultStartToStep < ActiveRecord::Migration
  def change
    add_column :steps, :default_start, :boolean
  end
end
