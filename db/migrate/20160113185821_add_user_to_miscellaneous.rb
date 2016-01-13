class AddUserToMiscellaneous < ActiveRecord::Migration
 def change
    add_reference :miscellaneous, :user, index: true, foreign_key: true
  end
end
