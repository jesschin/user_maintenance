module UserMaintenance
  class User < ActiveRecord::Base
    include RoleModel

    devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

    roles_attribute :role
    roles :admin, :user

    belongs_to :password_last_updated_by, :class => UserMaintenance::User, :foreign_key => :password_last_updated_by_user_id

    validates :role, :first_name, :last_name, :presence => true
    validate :only_one_role_assigned

    def self.valid_roles_map
      valid_roles.map do |role|
        [role.to_s.titleize, self.mask_for(role)]
      end
    end

    def active_for_authentication?
      super && self.enabled?
    end

    def full_name
      "#{first_name} #{last_name}"
    end

    private

    def only_one_role_assigned
      errors.add(:role, :equal_to) if role && !power_of_two?(role)
    end

    def power_of_two?(number)
      number & (number - 1) == 0
    end

  end
end
