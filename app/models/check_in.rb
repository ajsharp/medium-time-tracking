class CheckIn < ActiveRecord::Base
  validates :tracking_type, inclusion: {in: %w(in out)}
  validates :tracking_type, 
    :ts,
    :post_title,
    :post_id,
    presence: true
end
