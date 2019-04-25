// OOP

// クラスの定義
// class クラス名 {}
class Bird {
    // メンバ変数
    // var/let 変数名
    var name: String!

    // メンバメソッド
    // func メソッド名() {}
    func fly() {
        print("Yes, I can fly!!!")
    }

    func eat() {
        print("豆が主食。")
    }
}

// クラスのインスタンス化
// var/let インスタンス名 = クラス名()
var tori = Bird()

// メンバ変数へのアクセス
// インスタンス名.メンバ変数名
tori.name = "鳥人間"
print(tori.name)

// メンバメソッドの利用方法
// インスタンス名.メソッド名()
tori.fly()
tori.eat()


// Birdを継承したPigeonを定義
// BirdができることはPigeonもできる

// 継承
// class 子クラス名: 親クラス名 {}
class Pigeon: Bird {}

var p1 = Pigeon()
p1.name = "ぽっぽ"
p1.fly()
p1.eat()

var p2 = Pigeon()
p2.name = "鳩山由紀夫"
p2.fly()
p2.eat()

// Birdを継承したHawkを定義
// BirdができることはHawkもできるが、結果が違うものがある

class Hawk: Bird {
    // メソッドの上書き
    // override func 元のメソッド名() {}
    override func eat() {
        print("肉が主食。")
    }

    // 新しい振る舞いを追加
    func swim() {
        print("泳げる。")
    }
}

var h1 = Hawk()
h1.name = "タカ倉健"
h1.fly()
h1.eat()
h1.swim()


// 多態性
// 鳩とか鷹とかの意識なく、鳥の集合体として扱う
var birds:[Bird] = [tori, p1, p2, h1]
for bird in birds {
    print(bird.name)
    bird.fly()
    // 鳥が食べる、という振る舞いを実行
    // 実体によって結果が変わる
    bird.eat()

    // 鳥の振る舞いではないので実行できず
    // bird.swim()
}