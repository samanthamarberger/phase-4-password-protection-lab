class User < ApplicationRecord
    has_secure_password
    validates :password, presence: true, if: :password_required?

    def password_required?
        password.present? || password_confirmation.present?
    end
end
