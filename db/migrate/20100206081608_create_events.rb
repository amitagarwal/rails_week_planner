class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :description
      t.string :title
      t.string :start_date
      t.string :end_date
      t.string :bg_color_code
      t.timestamps
    end
  end
  
  def self.down
    drop_table :events
  end
end
