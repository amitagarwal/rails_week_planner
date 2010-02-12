class Events < ActiveRecord::Base
  attr_accessible :description, :bg_color_code ,:start_date ,:end_date
end
