class Room < ActiveRecord::Base
  attr_accessible :id, :building_id, :building, :capacity, :code, :name, :room_bookings

  belongs_to :building
  has_many :room_bookings, :dependent => :destroy

  def next_booking
  	RoomBooking.where(:room_id => id).where('starts_at > ?', Time.now.to_s).order(:starts_at).first	
  end

  def free_until
  	n = next_booking

  	if n == nil then
  		Time.now + 1.day
	else
		n.starts_at
	end
  end
end