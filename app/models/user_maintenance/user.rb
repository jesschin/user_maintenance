module UserMaintenance
  class User < ActiveRecord::Base
    include RoleModel

    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    roles_attribute :roles_mask
    roles :admin, :user

    belongs_to :password_last_updated_by, :class => UserMaintenance::User, :foreign_key => :password_last_updated_by_user_id

    validates :roles_mask, :first_name, :last_name, :presence => true
    validate :only_one_role_assigned

    def active_for_authentication?
      super && self.enabled?
    end

    def full_name
      "#{first_name} #{last_name}"
    end

    private

    def only_one_role_assigned
      errors.add(:roles_mask, 'can select only one') if roles_mask && !power_of_two?(roles_mask)
    end

    def power_of_two?(number)
      number & (number - 1) == 0
    end

  end
end
