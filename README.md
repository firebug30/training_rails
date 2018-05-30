# Rails研修用ドキュメント

## 目次
- [基礎](#基礎)
- [アルゴリズム](#アルゴリズム)
- [アーキテクチャ](#アーキテクチャ)

## 基礎

### Ruby 入門

#### やること
ドットインストールで実際に動画通りのものを書いて勉強する  
[Ruby入門 (全26回) - プログラミングならドットインストール](https://dotinstall.com/lessons/basic_ruby_v3)


#### これだけは読んどけ的な書籍
ややハードル高い（らしい？）  
[Efftctive Ruby](https://www.amazon.co.jp/Effective-Ruby-Peter-J-Jones/dp/4798139823/ref=pd_sim_14_4?_encoding=UTF8&pd_rd_i=4798139823&pd_rd_r=b2dd6759-6250-11e8-b101-733d61fa990d&pd_rd_w=7JR8i&pd_rd_wg=e9sER&pf_rd_i=desktop-dp-sims&pf_rd_m=AN1VRQENFRJN5&pf_rd_p=7990452376513976631&pf_rd_r=KHKPFFQ29JFJJNDW932B&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=KHKPFFQ29JFJJNDW932B)

メタプログラミングに関する良書。  
メタプログラミング自体を直接ゴリゴリ書く機会はそんなにないけど、Railsの動き方や挙動の本質的な理解に非常に役立つ。  
弊社リソース内でもメタプロは部分的に使ってます。  
[メタプログラミングRuby](https://www.amazon.co.jp/%E3%83%A1%E3%82%BF%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0Ruby-%E7%AC%AC2%E7%89%88-Paolo-Perrotta/dp/4873117437/ref=pd_sbs_14_1?_encoding=UTF8&pd_rd_i=4873117437&pd_rd_r=b7f96266-6250-11e8-86cf-43f26d2315b4&pd_rd_w=3q7fV&pd_rd_wg=2akQ9&pf_rd_i=desktop-dp-sims&pf_rd_m=AN1VRQENFRJN5&pf_rd_p=5805929820760247504&pf_rd_r=K4JYATPN9YYS8EGV5P2Q&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=K4JYATPN9YYS8EGV5P2Q)


### Ruby on Rails 入門

#### やること
ドットインストール通りにテストアプリケーションを作ってみる  
[Ruby on Rails 5入門 (全28回) - プログラミングならドットインストール](https://dotinstall.com/lessons/basic_ruby_v3)


#### これだけは読んどけ的な書籍
普通に良い  
[パーフェクトRuby on Rails](https://www.amazon.co.jp/%E3%83%91%E3%83%BC%E3%83%95%E3%82%A7%E3%82%AF%E3%83%88-Ruby-Rails-%E3%81%99%E3%81%8C%E3%82%8F%E3%82%89-%E3%81%BE%E3%81%95%E3%81%AE%E3%82%8A/dp/4774165166/ref=pd_sbs_14_14?_encoding=UTF8&pd_rd_i=4774165166&pd_rd_r=0e11f13e-6251-11e8-865c-a33d922cb783&pd_rd_w=EdemL&pd_rd_wg=hyfju&pf_rd_i=desktop-dp-sims&pf_rd_m=AN1VRQENFRJN5&pf_rd_p=5805929820760247504&pf_rd_r=83A4SRMJXXEX3PYEWPS5&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=83A4SRMJXXEX3PYEWPS5)

表題通り、割と現場思考で非常にためになる  
[実践Ruby on Rails4](https://www.amazon.co.jp/%E5%AE%9F%E8%B7%B5Ruby-Rails-4-%E7%8F%BE%E5%A0%B4%E3%81%AE%E3%83%97%E3%83%AD%E3%81%8B%E3%82%89%E5%AD%A6%E3%81%B6%E6%9C%AC%E6%A0%BCWeb%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0-%E9%BB%92%E7%94%B0/dp/4844335928/ref=pd_sbs_14_9?_encoding=UTF8&pd_rd_i=4844335928&pd_rd_r=a9eacb77-6251-11e8-9f05-4bb9f3f6a434&pd_rd_w=EqWCY&pd_rd_wg=lzr91&pf_rd_i=desktop-dp-sims&pf_rd_m=AN1VRQENFRJN5&pf_rd_p=5805929820760247504&pf_rd_r=44H1HSXG4W82JJHC72F8&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&psc=1&refRID=44H1HSXG4W82JJHC72F8)

### Docker入門

#### やること
ドットインストールを見て理解する  
[Docker入門 (全11回) - プログラミングならドットインストール](https://dotinstall.com/lessons/basic_docker)

以下の記事を熟読する  
[今日からはじめるDocker - コンテナー仮想化の必要性を理解して、まず開発環境に導入してみよう！](https://employment.en-japan.com/engineerhub/entry/2017/09/28/110000)


## アルゴリズム

アルゴリズムは現実問題から、いろいろな複雑性がそぎ落とされ、核の本質的な問題の解決にのみにフォーカスされたゲームみたいなもの。  
言語やアプリケーションの枠を超えた人類としての教養。  

### LeetCode

LeetCodeの以下の問題のソリューションを導き出す。  
出来たら[Submit Solution]して、弊社の誰かに確認してもらってください。  
[Run Code]ボタンでデバッグできます。

LEVEL ★  
【所感】組み込み関数使うことで可読性上がりますよというやつ。
[Median of Two Sorted Arrays](https://leetcode.com/problems/median-of-two-sorted-arrays/description/)

LEVEL ★  
【所感】Bit操作の勉強になるかも。  
Rubyだと、36msくらいを目指しましょう。  
[Number of 1 Bits](https://leetcode.com/problems/number-of-1-bits/description/)

LEVEL ★★  
【所感】再帰の基礎的な問題で、シンプルなので良い  
[Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree/description/)

LEVEL ★★★  
【所感】一応ゴリ押せるが、スマートに行きましょう  
[Word Break](https://leetcode.com/problems/maximum-depth-of-binary-tree/description/)

#### ヒント

LEVEL ★  
Maximum Depth of Binary Tree  
再帰処理とかをググってください。  

LEVEL ★  
Number of 1 Bits  
[Rubyでのビット操作に便利なメソッド](https://qiita.com/jkr_2255/items/8e29dce1999f3f6b69ad)

LEVEL ★★  
Word Break  
```
testaaaaatestaaaaaatestaaatestaaatest  
|-- segmentable --||- ? -|  
|-- segmentable ---------||- ? -|  
|-- segmentable ----------------||--|  
```
string[0, i]（0 <= i < N）がsegmentableでかつ、string[i, j - i]（i < j <= N）がセグメント候補に存在するかどうかを確認していくと考えると...?


## アーキテクチャ

アーキテクチャは、開発規模（コード量や開発人数）が大きくなるにつれて、必然的に複雑性を増していくコードの運用持続可能性を上げていくか、という話。

以下の文献等を参考にして、そのレイヤーの必要性や存在意義を腹落ちさせてください。

### Service
- [Railsで重要なパターンpart 1: Service Object（翻訳）](https://techracho.bpsinc.jp/hachi8833/2017_10_16/46482)  
- [肥大化したActiveRecordモデルをリファクタリングする7つの方法（翻訳）](https://techracho.bpsinc.jp/hachi8833/2013_11_19/14738)  
- [Rails：Service層を運用して良かったところ、悪かったところ](https://qiita.com/joooee0000/items/369fd4676cd9dfb1f6eb)

弊社リソースにおけるServiceレイヤーの定義
```
複数ドメインを触る処理の複雑性を吸収する

Ex) DBとS3、複数のDBを触る、DBと別APIへのリクエスト
```

### Form 
- [肥大化したActiveRecordモデルをリファクタリングする7つの方法（翻訳） -- Form Object](https://techracho.bpsinc.jp/hachi8833/2013_11_19/14738#form-object)  

弊社リソースにおけるFormレイヤーの定義
```
複数モデルを触る<form>のViewを持つ処理をモデルレベルで仮想化する

↑の訳）コントローラーからは単一のモデルに対するCRUD処理に見えて、
かつ、実際のモデルに他モデルの処理を介在させないために、ActiveModelを継承した擬似モデルとしてFormオブジェクトを作って、コントローラーはそれに対してCRUDする。

↑の訳）VideoとCreator両方にsaveをしないといけない、フォームがあったとする。
Controllerで、Video.saveとCreator.saveを二つ呼ぶのは禁止。
Videoモデルにsave_with_creator的なCreator.saveを呼ぶメソッドを作るのも禁止。
となると、どうしますかという話。
```

### Validator
- [Rails tips: カスタムバリデータクラスを作る（翻訳）](https://techracho.bpsinc.jp/hachi8833/2018_02_13/52286)

弊社リソースにおけるValidatorレイヤーの定義
```
バリデーションロジックのパッケージング
```

### Serializer

弊社リソースにおけるSerializerレイヤーの定義
```
ModelオブジェクトからのJSONパース処理のパッケージング
```
