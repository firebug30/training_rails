class Series < ApplicationRecord
  has_many :videos
  belongs_to :creator

  # has_many の第二引数について
  # has_many は第二引数にProcを渡すことができ、アソシエーション実行時の条件(where)や順序(order by)などを指定できる
  #
  # [備考]
  # ・ https://qiita.com/okamos/items/724a4a162dfa9e27754a
  # ・ http://ducktypelabs.com/using-scope-with-associations/
  has_many :visible_videos,
           -> { visible },
           class_name:  'Video'

  # Scope について
  # クエリアセットのようなもの。よく実行するクエリを関数化して置くようなイメージ
  #
  # [備考]
  # ・https://railsguides.jp/active_record_querying.html#%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%97
  # ・https://programming-beginner-zeroichi.jp/articles/62
  scope :has_visible_videos, -> { joins(:visible_videos).group('series_id') }
end