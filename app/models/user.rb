class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :comments

  def after_sign_up_path_for
    '/'
  end

  def after_sign_out_path_for
    '/'
  end
end
