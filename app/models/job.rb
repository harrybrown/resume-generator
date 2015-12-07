class Job < ActiveRecord::Base
  has_many :job_duties

  default_scope { order('end_date DESC') }


 

  def humanized_end_date
    if self.end_date >=  DateTime.now
      humanized_end_date = "Present"
    else
     humanized_end_date = self.end_date.strftime("%B %d, %Y") # will not change the attribute
    end
  end

end
