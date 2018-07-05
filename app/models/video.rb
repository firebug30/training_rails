class Video < ApplicationRecord
  belongs_to :series
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :favorite_users, through: :likes, source: :user

  # Delegate（移譲）
  # belongs_toは :through が使えないので、Associationでcreatorアクセスはできない。
  # なので、代わりにDelegationを使っている。
  # 
  # [備考]
  # ・ https://blog.toshimaru.net/belongs_to-through/
  # ・ http://www.ckazu.info/blog/2013/12/14/delegate_allow_nil/
  delegate :creator, to: :series
  
  # Railsにおける Enum について
  # Integerや、Booleanのカラムに対して、列挙型ぽく便利メソッドなどが使えるようになる。
  # 
  # [備考]
  # ・ http://ruby-rails.hatenadiary.com/entry/20150710/1436461745
  enum status_code: { visible: 1, invisible: 0 }

  def favorite(user)
    likes.create(user_id: user.id)
  end

  def unfavorite(user)
    likes.find_by(user_id: user.id).destroy
  end

   def favorite?(user)
    favorite_users.include?(user)
  end
end