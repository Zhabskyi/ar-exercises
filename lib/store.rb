class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :store_must_have_mens_or_womens_apparel

  def store_must_have_mens_or_womens_apparel
    if mens_apparel != true && womens_apparel != true
      errors.add(:mens_apparel || :womens_apparel, "Store must carry at least one of mens apparel or womens apparel")
    end
  end

  before_destroy :check_if_can_be_destroyed
 
  private
    def check_if_can_be_destroyed
      if employees.any?
        return false
      end
    end
end
