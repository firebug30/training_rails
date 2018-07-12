class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :favorite_videos, through: :likes, source: :video

  def favorite(video)
    likes.create(video_id: video.id)
  end

  def unfavorite(video)
    likes.find_by(video_id: video.id).destroy
  end

   def favorite?(video)
    favorite_videos.include?(video)
  end
end
