class Signup < ActiveInteraction::Base

  string :username
  string :password
  string :password_confirmation
  string :role, default: 'general'
  string :option

  validates :username, presence: true, length: { minimum: 3, maximum: 20 }
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true

  with_options if: :admin? do |r|
    r.validates :option, presence: true
  end

  def execute
    {}
  end

  private

  def admin?
    role == 'admin'
  end
end
