class Url < ActiveRecord::Base

  validates :long, presence: true

  belongs_to :user

  def newurl
    @rand = rand(1..8999).to_s
    self.update_attributes(short: @rand)
    self.save
  end

end
