class User < ActiveRecord::Base
  validates :name, inclusion: { in: [0, 1] } # string
  validates :age, inclusion: { in: [0, 1, 5] } # integer
  validates :admin, inclusion: { in: [true, false] } # boolean
end
