class User < ApplicationRecord

  after_create :send_welcome_email
  if login?
    :notification
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def notification
    UserMailer.notification(self).deliver_now
  end

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
