class Creator < ApplicationRecord
  has_many :series

  # :through パラメータについて
  # has_many と has_one は :throughパラメータを使って、中間テーブルを経由したアソシエーションを定義できる。
  # 
  # [備考]
  # ・ https://railsguides.jp/association_basics.html#has-many-through%E9%96%A2%E9%80%A3%E4%BB%98%E3%81%91
  # ・ https://babiy3104.hateblo.jp/entry/2014/02/22/152341
  has_many :videos, through: :series

  # Scope について
  # Seriesモデル (models/series.rb) 内の記述を参照すること。
  scope :has_visible_videos, -> { where(creator_id: Series.has_visible_videos.group(:creator_id).pluck(:creator_id)) }
end