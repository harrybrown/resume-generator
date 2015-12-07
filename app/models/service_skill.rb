class ServiceSkill < ActiveRecord::Base

  belongs_to :service

  default_scope { order('display_order ASC') }

end
