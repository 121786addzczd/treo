# Treo

## 概要
![](https://i.gyazo.com/7939cb0b3f52dfc112a75294fbe4aba0.png)
ToDoリストツール「Trello」」を参考に作成しております。

# 何故作ったか？

Webアプリケーションの基礎（登録、更新、削除）を学ぶ目的もありますが、せっかく作るなら実生活に使えるアプリケーションが良いなと思い、そこで思いついたのがタスク管理ツールでした。

**機能としては、listを作る -> listの中からカードを作る(さらにカードを追加をクリック) -> list作る -> cardを編集するページに、プルダウン式でlist名が表示されているので、選択して更新するとカードが選択したリストに移動します。**


# URL

[https://treo-31021.herokuapp.com/](https://treo-31021.herokuapp.com/)

```HTML
テストユーザーアカウント

メールアドレス：qwer@qwer.com
パスワード：qwer1234
```


# 開発環境

- Ruby 2.6.5
- Rails 6.0.0

# ER図
![treo ER図](https://i.gyazo.com/08e93dbf95c7be4a1566aa0caab652bf.png)

# 各種機能＆導入技術

- プラットフォーム（Heroku）
- データベース（MySQL）
- CSSフレームワーク（Bootstrap4）
- ユーザー登録＆ログイン（devise)

## トップページ
![](https://i.gyazo.com/23c32fb6afe017fd079d8046f4902a75.png)

## リスト作成画面
![](https://i.gyazo.com/6f1f920fe95a0189b4a24eaf12a00e4d.png)

## リスト作成画面後のトップページ
![](https://i.gyazo.com/5c508a950f9fec09065f26df1334ed27.png)

## カード作成画面
![](https://i.gyazo.com/b4293fca91c38b68c36aed08c9e359a1.png)

## カード作成後のトップページ
![](https://i.gyazo.com/45259faace435f9ea7ec7a86a766f28f.png)