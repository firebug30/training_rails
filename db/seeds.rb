begin

  #####################
  # クリエイター
  #####################
  Creator.create!([
    { creator_id: 1, icon_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/creator/1/a47292d165ba087061fd2dd89fb0ed02a274cf35dbc7e328150eed52d78e7a5b.png", name: "Creator1", created_at: "2018-01-01 12:00:00", updated_at: "2018-01-01 12:00:00" },
    { creator_id: 2, icon_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/creator/2/2ff5a588168fda85bbe65dd6d6af7fc0193efac3b629edc973b611cc82b90dd2.png", name: "Creator2", created_at: "2018-01-03 12:00:00", updated_at: "2018-01-03 12:00:00" },
    { creator_id: 3, icon_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/creator/3/a16c69fcb6512e494e0387245f06362db442eb479e62c7d03ea9e3b2e0bfc6ee.png", name: "Creator3", created_at: "2018-01-02 12:00:00", updated_at: "2018-01-02 12:00:00" }
  ])

  #####################
  # シリーズ
  #####################
  Series.create!([
    { series_id: 1, banner_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/series/banner/1/230ee3fc1b4e95cf63e9ef2f63e8151f24aa52ddfbaecfa7f7bce952e41de332.png", title: "Series1 >> Creator1", creator_id: 1, created_at: "2018-01-01 12:00:00", updated_at: "2018-01-01 12:00:00" },
    { series_id: 2, banner_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/series/banner/2/c7aa7f420913d44e1e245d565b80e0e6789a21a7cee123626ec7ef4b38707c2e.png", title: "Series2 >> Creator1", creator_id: 1, created_at: "2018-01-02 12:00:00", updated_at: "2018-01-02 12:00:00" },
    { series_id: 3, banner_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/series/banner/3/49f14e95dd5ccc6a45f1d18b6405bbfe7bdccd6c67b283678d7efae4e1ef6c01.png", title: "Series3 >> Creator1", creator_id: 1, created_at: "2018-01-05 12:00:00", updated_at: "2018-01-05 12:00:00" },
    { series_id: 4, banner_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/series/banner/4/30ce725dbfe0327b738bf527cfbe1d027036e7121b74fe663ceb2ce283840c4b.png", title: "Series4 >> Creator2", creator_id: 2, created_at: "2018-01-04 12:00:00", updated_at: "2018-01-04 12:00:00" },
    { series_id: 5, banner_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/series/banner/5/26b35cca1578575f84df1295cf648c1782695ae098d040be4f032f6d0fd672a2.png", title: "Series5 >> Creator3", creator_id: 3, created_at: "2018-01-03 12:00:00", updated_at: "2018-01-03 12:00:00" }
  ])

  #####################
  # 動画
  #####################
  Video.create!([
    { video_id: 1, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/1/050b0d0469eb20bdec48ba68fafb5a7b1a1fec00434b6e3711b87a6904b20a7d.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/1/deb8ef19a274e1c45d99a6cf591ceb580025c3a88c3021a226d6da22b6daf85c.jpg", title: "Video1 >> Series1", series_id: 1, status_code: 1, created_at: "2018-01-01 12:00:00", updated_at: "2017-01-01 12:00:00" },
    { video_id: 2, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/2/63bd85b9c1983b51ce83df5994d94f31d5f6b9e350a7586951b11a4ed2ca2800.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/2/f963f38f531c4ca15248033e68637bc3d580fe664f857ab287a42e323e671023.jpg", title: "Video2 >> Series1", series_id: 1, status_code: 1, created_at: "2018-01-02 12:00:00", updated_at: "2018-01-02 12:00:00" },
    { video_id: 3, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/3/f8d2b0b7c76688190087fac4b8e5c590a6a5755d6473c7c36491e078f29aeca7.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/3/8b4026362714e5813518b2defbb6265b6fc6c1a4d40b4e381275c1d6b43346e5.jpg", title: "Video3 >> Series1", series_id: 1, status_code: 1, created_at: "2018-01-03 12:00:00", updated_at: "2018-01-03 15:00:00" },
    { video_id: 4, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/4/579ad18fe3dd3b3c3d6a0391779767f8029e8478fd8fab7f1d87643d3adc118f.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/4/fab1104e32a04bc89b7daf9149869e0fefe6340a56a2f1af3c0b6796be0aff40.jpg", title: "Video4 >> Series1", series_id: 1, status_code: 0, created_at: "2018-01-05 12:00:00", updated_at: "2018-01-05 15:00:00" },
    { video_id: 5, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/5/2026c274af31a79f432623998e468a15dfbb406fe036ffaa27eabc1db2b0c86c.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/5/ed457eada7d66e319f4e4d72d41770305094409f9239780b73ef2d512b7783f6.jpg", title: "Video5 >> Series2", series_id: 2, status_code: 1, created_at: "2018-01-04 12:00:00", updated_at: "2018-01-04 12:00:00" },
    { video_id: 6, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/6/96a5f04546703b84fefadf44652d5ab971d7d3378db590f2b12c49e12a45b13f.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/6/a1e01f7de08753379cca59a70f5799f10e5eede7292d74c2fd1d7a98d192d24d.jpg", title: "Video6 >> Series2", series_id: 2, status_code: 1, created_at: "2018-01-06 12:00:00", updated_at: "2018-01-06 12:00:00" },
    { video_id: 7, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/7/2cdec302aa2ca26cd7222da07ff1329d15a6ef4d0168228684b1e590658279bb.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/7/037b7719a191236cfb9b5bd4d80f1a712c01d24c53367a4243cb5f1847cbfb7c.jpg", title: "Video7 >> Series2", series_id: 2, status_code: 0, created_at: "2018-01-01 15:00:00", updated_at: "2018-01-01 15:00:00" },
    { video_id: 8, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/8/263fb65b0f5b7d964692d5bfcdce6d5e11cb535b312dd6751f964d9251535f97.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/8/9bd847883265c48bb1a7adc389e4eb36a13a6c186e482fbbb399ef884ea76a1e.jpg", title: "Video8 >> Series3", series_id: 3, status_code: 1, created_at: "2018-01-02 15:00:00", updated_at: "2018-01-02 15:00:00" },
    { video_id: 9, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/9/9736d21a9973727a42aa1643fc9e80a2ce206e45a8005b33ee8b0a9f483edf36.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/9/e1fb66fe1ae27f36adaaefe8c2f53f5c6887cc28f9a014aa3090d5e3a399facf.jpg", title: "Video9 >> Series3", series_id: 3, status_code: 1, created_at: "2018-01-03 15:00:00", updated_at: "2018-01-03 15:00:00" },
    { video_id: 10, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/10/bdf9fdf56323cfedadc0492793d435c2f5ccf913f9c2af360c30d10b0b05d847.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/10/2ceeeca0bfc9be4c9f05b19668c174f92b2426edc0ed051b790daf9ce66c99a1.jpg", title: "Video10 >> Series4", series_id: 4, status_code: 1, created_at: "2018-01-01 13:00:00", updated_at: "2018-01-01 13:00:00" },
    { video_id: 11, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/11/a2f3fb53df9f3af793a18f8183209cf21e946be342c4f4152f30ec31abda9e73.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/11/368d8e95ee34cbed24b55bd557865a4c02f8e590137c3211e7260a99fb4de169.jpg", title: "Video11 >> Series4", series_id: 4, status_code: 1, created_at: "2018-01-02 15:00:00", updated_at: "2018-01-02 15:00:00" },
    { video_id: 12, file_url: "https://s3-ap-northeast-1.amazonaws.com/dev-thirty-training/assets/data/video/file/12/30efcfd11e1529123269d64094d80adfb78fc4e9838c5881720e8ab59574bc31.mp4", thumb_url: "https://s3-ap-northeast-1.amazonaws.com/dev-vem.f-stg.jp/assets/data/video/thumb/12/144bec8d7c9d93e16808f531329517a7f2bf3b58759f3c3820e3baef138a81e1.jpg", title: "Video12 >> Series5", series_id: 5, status_code: 1, created_at: "2018-01-02 15:00:00", updated_at: "2018-01-02 15:00:00" }
  ])
rescue ActiveRecord::RecordInvalid => e
  puts e.message
  pp e.record.errors
end
