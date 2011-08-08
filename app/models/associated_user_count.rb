class AssociatedUserCount < ActiveRecord::Base
  belongs_to :access_point

  default_scope order(:created_at)

  def as_json(options={})
    # Time should be in unix epoch time in
    # milliseconds...
    [ created_at.to_i * 1000, count ]
  end
end