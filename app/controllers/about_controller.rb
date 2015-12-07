class AboutController < ApplicationController

  def index
    @misc_abilities = MiscellaneousAbility.all
  end


end
