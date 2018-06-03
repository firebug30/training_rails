class Video < ApplicationRecord
  belongs_to :series

  # Delegate（移譲）
  # belongs_toは :through が使えないので、Associationでcreatorアクセスはできない。
  # なので、代わりにDelegationを使っている。
  # 
  # [備考]
  # ・ https://blog.toshimaru.net/belongs_to-through/
  # ・ http://www.ckazu.info/blog/2013/12/14/delegate_allow_nil/
  delegate :creator, to: :series
  
  
end