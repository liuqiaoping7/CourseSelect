class AddOpenAttribute < ActiveRecord::Migration
  def change
    # add_column :courses, boolean:open, default: false
    # products, :part_number, :string
    
    # boolean :admin, default: false
    add_column :courses, :open, :boolean
  end
end
