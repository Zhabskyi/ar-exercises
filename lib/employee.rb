class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true

  after_validation :create_password
 
  private
    def create_password
      self.password = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
    end
end
