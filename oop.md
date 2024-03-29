# オブジェクト指向

## 目次

  - 導入
  - 概要
  - 用語
  - 特徴
    - 継承
    - 多態性(ポリモフィズム)
    - 隠蔽化(カプセル化)
  - まとめ


## 導入

  オブジェクト指向とは、エンジニア必須の知識の一つで、主流な考え方でもある。  
  習得難易度は決して低くないが、言語横断の知識なので一度抑えるとずっと役に立つ。  
  まずは読めることを目指しましょう！  


## 概要

  これまで見て書いてきた通り、アプリケーションやシステムは複雑なプログラムを内包しています。  
  そんな複雑なプログラムを「オブジェクト同士のやりとり」として捉え、扱うことをオブジェクト指向と呼びます。  
  複雑なプログラムをカテゴライズして、各部品として切り出し、部品同士がやり取りすることによって様々な処理を実現するのです。  

  「オブジェクト同士のやりとり」というのは、こういうことです。  
  例えば、皆さんはカバンにPCを入れて持ち歩き、電車やバスに乗って会社や学校に行きます。  
  今ここで出てきた皆さん人間、カバン、PC、電車やバスといったものは全てオブジェクトです。  
  僕ら「人間」や「PC」を「カバン」に入れ、「電車」や「バス」を利用して「会社」や「学校」に行く。  
  これがオブジェクト同士のやりとりというものです。  

  なので、オブジェクト指向は、厄介そうなプログラムを人間的な見方で見て扱いやすくしようという考え方でもあるのです。  
  コンピュータからしてみれば、そのプログラムが人間の行動を示していようがいまいがどうでもよいですが、  
  僕ら人間にとっては、そのプログラムは「人間の行動を定義したもの」と分かった方が都合いいですよね。  


## 用語

  次にオブジェクト指向を学ぶ上で重要な用語を見ていきましょう。  
  これから紹介する用語は今後授業でも利用していくのでしっかり覚えていきましょう。  

  - オブジェクト  
      オブジェクトとは、モノ・概念・事象などを示します。  
      車やバス、社長、管理者、学生などどんなものでもオブジェクトになり得ます。  
  - クラス  
      クラスは、あるオブジェクトの設計図です。  
      オブジェクトにどんな特徴があるのか、どんな振る舞いをするのか、などが記載されています。  
  - インスタンス（実体）  
      クラス（設計図）から生成された実体・実物をインスタンスと呼びます。  
      車の設計図がクラスだとすれば、それを元に作られた車がインスタンスになります。  
      設計図が一枚だとしても車は複数台できるのと同じように、  
      クラスからインスタンスは複数生成することができます。  
  - メンバー  
      設計図にはインスタンスが持つべきプロパティや挙動が記載されています。  
      その記載された内容をメンバーと呼び、メンバーには変数(定数)とメソッドが存在します。  

    - メンバー変数  
        各インスタンスが持つ属性・値をメンバー変数と呼びます。  
    - メソッド  
        対して、メソッドは各インスタンスが行える振る舞いを指します。  


## 特徴

  さて、そんなオブジェクト指向には一般的に３つの特徴があると言われています。  

  - 継承
  - 多態性(ポリモフィズム)
  - 隠蔽化(カプセル化)

  この中で特に肝となるのが継承です。継承だけは忘れないでください。  
  とはいえ、まずはそれぞれ詳しく見ていきましょう。  


### 継承

  継承とは、あるオブジェクトが他のオブジェクトの特性を引き継いでいることを示します。  
  継承したオブジェクトは、継承されたオブジェクトの属性を持ち、継承されたオブジェクトの振る舞いを行うことができます。  

  例えば、乗用車は車の一種であり、バスも車の一種です。当然のとこですが、「車」にできることは「乗用車」でも「バス」でも行うことができますよね。  
  この時、「乗用車」は「車」を継承している、ということができます。  
  「バス」も同様に、「バス」は「車」を継承している、ということができます。  

  他の例でいうと、鳩は鳥の一種であり、カラスも鳥の一種です。「鳩」も「カラス」も「鳥」の一種ですから、羽やくちばしがあり、飛ぶことができます。  
  車の例と同様に、「鳩」は「鳥」を継承しているし、「カラス」も「鳥」を継承しています。  

  このように、あるオブジェクトはあるオブジェクトの特性を引き継いでいます。考えてみれば当たり前のことですよね。  

  もう少し詳細に見ていきます。  
  先ほど「鳥」「鳩」「カラス」という三つのオブジェクトを例にあげ、「鳩」や「カラス」は「鳥」を継承している、と述べました。  
  この時、具体的なオブジェクトが抽象的なオブジェクトを継承していることに注目してください。  
  「鳩」よりも「鳥」のほうがより大雑把な概念ですよね。  
  このように継承は具体と抽象の関係が必ず存在します。  
  このような関係を、親(抽象)と子(抽象)と呼ぶこともあります。  

#### 継承まとめ

  - 継承とは、親(抽象)と子(具体)の関係
  - 親(抽象)が行える振る舞いは子(具体)もできる
  - 親(抽象)にある属性は子(具体)にもある


### 多態性(ポリモフィズム)

  多態性とは、同じ振る舞いから結果が変わりうることを示します。  
  この特徴は継承を前提とした特徴で、親ができることは子もできる、という特性を利用しています。  

  例えば、僕ら人間は皆笑うことができます。  
  さて、ここで、可憐な少女が笑うのと、酔っ払ったおっさんが笑うのを想像をしてください。  
  どうでしょうか。  
  どちらも、人間が笑う、という同じオブジェクトによる同じ振る舞いですが、イメージが異なりましたよね。  
  これが多態性というものです。  

#### 多態性まとめ

  - 多態性とは、振る舞いは同じだが結果が変わりうること  
  - 継承を前提とした特徴  


### 隠蔽化(カプセル化)

  最後に隠蔽化です。  

  隠蔽化とは、そのオブジェクトに必要な属性や振る舞いを一つの箇所にまとめ、密閉することを示します。  
  オブジェクトの内部構造を不用意に変えられては困るため、この特徴が存在します。  

  例えば、皆さんはパソコンやスマホを利用する際に用意されたキーボードやディスプレイを利用しますよね。  
  僕らは内部に存在するCPUだとかネジだとかよくわからない部品を操作することはないはずです。  
  仮に、パソコンを分解して大事な部品を失ってしまった場合、動かなくなる可能性も容易に想像できるかと思います。  

  プログラムにおいても、内部構造は不用意に触れないように密閉しましょうということです。  

#### カプセル化まとめ

  - 隠蔽化とは、そのオブジェクトに必要な属性や振る舞いを一つの箇所にまとめ、密閉すること  
  - 内部構造を守るために存在する  


## まとめ

  オブジェクト指向の説明は以上になります。どうにもよくわからないという方は用語と継承だけまず覚えましょう。  
  また、ソースコードを読んでいくうちに見えてくることもありますので、焦らずじっくり学んでいきましょう。  
