class Puppy < ActiveRecord::Base
  validates :name, :age, :breed, presence: true
end
