# tdd-skeleton-php
testrunnerを利用したphpunitのスケルトン(testrunnerを使うためphpunitは3.7を利用)

## setup

```
$ make setup
```

## TDD

- テスト 
./tests配下に記述

- 実装 
./src配下に記載

## test実行

```
$ make test
```

## 設定

### phpunit
./phpunit.xmlを適時編集

### testrunner
コンパイルを行う

```
$ ./vendor/bin/testrunner compile -p vendor/autoload.php
```

## testrunner実行

```
$ ./vendor/bin/testrunner phpunit -p vendor/autoload.php -a tests -a src
```
