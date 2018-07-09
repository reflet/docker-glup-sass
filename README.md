# SASS環境(gulp版)
gulpでsassを利用できる環境を作ってみる

## モジュール
導入済みモジュールは以下の通りです。

- gulp-sass
- gulp-postcss
- autoprefixer
- browserslist
- postcss-flexbugs-fixes
- CSSWring

## ビルド
下記コマンドでdockerイメージを構築します。

```
$ docker-compose build
```

## 起動
下記コマンドで起動します。

```
$ docker-compose up -d
```

## コンパイル
下記は、scssファイルをコンパイルするコマンドです。

```
$ docker-compose exec gulp-sass gulp sass
```

## 監視
scssファイルが更新されたら自動で監視するコマンドです。

```
$ docker-compose exec gulp-sass gulp watch
```

以上


