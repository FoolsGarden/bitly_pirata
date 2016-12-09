class Url < ActiveRecord::Base
  # Remember to create a migration!
  before_create :new_url
  
  def new_url
    array = Array.new(7){[*"A".."Z", *"a".."z", *"0".."9"].sample}.join
    self.short_url = array
  end

end
