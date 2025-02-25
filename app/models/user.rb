class User < ApplicationRecord
  has_secure_password

  enum :role, {
    student: 0,
    teacher: 1,
    admin: 2
  }

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 8 }, if: -> { new_record? || changes[:password_digest] }
  validates :first_name, format: { with: /\A[a-zA-Z\s\-']+\z/, message: "should be an alphabet" }, allow_blank: true
  validates :last_name, format: { with: /\a[a-za-z\s\-']+\z/, message: "should be an alphabet" }, allow_blank: true

  before_validation :downcase_email, if: { email.present? }

  private

  def downcase_email
    self.email = email.downcase
  end
end
