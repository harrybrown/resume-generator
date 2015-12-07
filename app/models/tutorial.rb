class Tutorial < ActiveRecord::Base

  default_scope { order('category ASC') }


end
