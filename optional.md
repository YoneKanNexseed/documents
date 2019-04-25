# データ型 ~ nilとオプショナル ~

## 前提

  Swift、というよりプログラミングの世界にはデータの型というものがある
  文字列を扱うStringや整数を扱うIntなどなど

## nil

  各変数などでデータが存在しないことをnilという
    var job:String = ""
    var job:String = nil
  この二つは全然違う。
  ""は呼び名がない状態。nilは存在しない状態。

  より正確にいうと、メモリ上の参照が存在しない状態。

  Swiftはnilをあんまりよく思っていない。
  存在しないんじゃ仲良くできないじゃないか！と。

## Optional

  そこでオプショナル。
  昨今のプログラミング言語がこぞって取り入れている仕組み。

### データ型の一つ

  オプショナル型とはデータ型の一つで、変数の宣言時に使用できる。

### 宣言の仕方

  var age: Int?
  var name: String!

  とかって書く。

### どんなデータ型か

  変数にnilを代入することが許されている。
  Swiftはnilが嫌い。でもオプショナルならOK。

  var hoge: String
  print(hoge)

  これはダメだけど、
  これはOK

  var hoge: String?
  print(hoge)

  ちなみに、オプショナル型以外はnilを受け付けないので、
  var hoge: String = nil
  これはエラーになる

### nilは嫌われてるのに必要？

  例えば、SNSでユーザーが名前とプロフィール画像を登録できるとする。
  名前は必須だとして、画像は登録してもしなくても良いと考えた時、
  画像は存在しない(=nil)可能性がある
  class User {
    var name: String
    var image: UIImage?
  }

## 再びオプショナル

### ?と!

  ?が一般的なオプショナル型で、!は暗黙的アンラップオプショナル型という乱暴者なオプショナル型。

### アンラップ

  オプショナル型のイメージは包み紙。その中身は実は空かもしれない。
  その包み紙の中身を利用するにはラップを剥がす必要がある。これがアンラップ。

  var fuga: String? = "fugafuga"
  print(fuga)  // Optional("fugafuga") 包み紙に入った状態
  print(fuga!) // fugafuga 取り出した！

#### Forced Unwrap（強制的にアンラップ）

  無理矢理ひっぺがす。
  オプショナル型の変数!
  と書く。

  var hobby: String?
  hobby = "プログラミング"
  print(hobby!)

  nilだとエラーで落ちるから利用シーンに注意

#### Optional Binding（アンラップして条件に利用する合わせ技）

  中身がnilかどうかを判定する。
  安全

  var hobby: String?
  if let unwrapHobby = hobby {
    print("趣味は\(unwrapHobby)です")
  } else {
    print("趣味はありません")
  }

#### Optional Chaining

  オプショナルで包まれた存在の中のプロパティにアクセスする
  安全

  var reo: Human? = Human()
  print(reo?.name)

  変数がnilでない場合にプロパティやメソッドにアクセスする
  nilの場合、nilが返却される

### 暗黙的アンラップオプショナル型はなんだったの？

  アンラップ作業を勝手に行ってしまう乱暴者です。
  nilが入っていた場合落ちる。