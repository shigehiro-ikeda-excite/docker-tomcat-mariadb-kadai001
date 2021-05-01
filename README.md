docker-tomcat-mariadb
====

Docker を使って、Tomcat + MariaDB でのアプリ開発学習のための環境を構築します。


## 準備

Docker を導入してください。  
Docker の導入方法はここでは触れませんので、各自調べてください。  
- [docker desktop for windows - Google 検索](https://www.google.com/search?q=docker+desktop+for+windows&client=firefox-b-d&sxsrf=ALeKk037jUagc9C571ll-sdGs128HmhKoQ:1619851927674&source=lnt&tbs=qdr:y&sa=X&ved=2ahUKEwjOgfPV8qfwAhXYMN4KHSOuAKAQpwV6BAgBECo&biw=1920&bih=1073)
- [docker desktop for mac - Google 検索](https://www.google.com/search?q=docker+desktop+for+mac&client=firefox-b-d&biw=1920&bih=1073&tbs=qdr%3Ay&sxsrf=ALeKk01b525tGMxtWBTPqeUry6zfJp117w%3A1619851933504&ei=nfqMYLaZHof7wAPZ_pqIDw&oq=docker+desktop+for+mac&gs_lcp=Cgdnd3Mtd2l6EAMyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADoHCCMQsAMQJzoHCAAQRxCwA1CazwJY9NECYNvSAmgCcAJ4AIABiwKIAc8DkgEFMS4xLjGYAQCgAQGqAQdnd3Mtd2l6yAEFwAEB&sclient=gws-wiz&ved=0ahUKEwj229bY8qfwAhWHPXAKHVm_BvEQ4dUDCA0&uact=5)
- [docker with linux - Google 検索](https://www.google.com/search?q=docker+with+linux&client=firefox-b-d&biw=1920&bih=1073&tbs=qdr%3Ay&sxsrf=ALeKk032rItA3Sseist1xbtGJ7Rk9RjI-g%3A1619852033323&ei=AfuMYPiXE4WJoATtiYWICg&oq=docker+with+linux&gs_lcp=Cgdnd3Mtd2l6EAMyBggjECcQEzIFCAAQywEyBAgAEB4yBAgAEB4yBAgAEB4yBggAEAgQHjIGCAAQCBAeMgYIABAFEB46BwgAELADEBM6CwgAELADEA0QHhATOg0IABCwAxAIEA0QHhATOg0IABCwAxANEAUQHhATUOgKWMELYI8MaAFwAHgAgAHDAYgBrQKSAQMwLjKYAQCgAQGqAQdnd3Mtd2l6yAEIwAEB&sclient=gws-wiz&ved=0ahUKEwi4nKOI86fwAhWFBIgKHe1EAaEQ4dUDCA0&uact=5)


## 使い方

1. このリポジトリを任意のディレクトリに`git clone`する。
1. [Download MariaDB Products & Tools | MariaDB](https://mariadb.com/downloads/#connectors)からMariaDBのJDBCドライバ（jarファイル 例：`mariadb-java-client-2.7.1.jar`）をダウンロードして、git clone したディレクトリ直下へ格納する。
1. git clone したディレクトリで`docker-compose up -d`

以上。  

```bash
% pwd
/Users/~/Workspaces/docker/docker-tomcat-mariadb
%
% tree
.
├── docker-compose.yml
├── mariadb-java-client-2.7.1.jar
└── webapps
    └── helloworld
        └── index.jsp

2 directories, 3 files
%
% docker-compose up -d
  ・
  ・
  ・
Creating docker-tomcat-mariadb_db_1      ... done
Creating docker-tomcat-mariadb_adminer_1 ... done
Creating docker-tomcat-mariadb_tomcat_1  ... done
```
上記のように表示されればOK。  
Docker for desktop のダッシュボードか`docker ps -a`で MaridDB/Tomcat/Adminer が起動していることを確認してください。  

以下のURLを開いて、動作確認用のJSPを確認してください。  
[http://127.0.0.1:8080/helloworld/](http://127.0.0.1:8080/helloworld/)


## Adminer について

[Adminer - Database management in a single PHP file](https://www.adminer.org/)  
ブラウザからデータベースを管理できるツールです。  
以下のURLで使用できるはずです。  
[http://127.0.0.1:8081/](http://127.0.0.1:8081/)


## DBへの接続について

起動したMariaDBには、Adminerや各種DBクライアントを使って、`docker-compose.yml`の`MYSQL_USER`と`MYSQL_PASSWORD`で接続可能です。


## Webアプリケーションのデプロイ

git clone したディレクトリの`/webapps`（例：`~/Workspaces/docker/docker-tomcat-mariadb/webapps`）に`.war`ファイルを格納するだけです。


## Webアプリケーションの開発

EclipseでWebアプリ（動的Webプロジェクト）を開発する際には、Tomcat Server の環境変数に以下を追加してください。  
`DB_HOST`=`localhost`  
![スクリーンショット 2021-05-02 0 19 21](https://user-images.githubusercontent.com/2688618/116786913-3bef5600-aadc-11eb-9152-b0ca33c3bcb5.png)
