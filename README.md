# NetworkScience-environment 

筑波大学(社会工学類)で開講されているネットワーク科学のDocker向け環境です。
Jupyter Labの拡張機能として以下が含まれています。
- jupyterlab-git
- jupyter_contrib_nbextensions
- jupyter_nbextensions_configurator


また、以下のPythonライブラリが入っています。
- Matplotplib
- NetworkX
- SciPy
- NumPy


## 使い方

Dockerと[Docker compose](https://docs.docker.jp/v1.12/compose/install.html)が必要です。

```bash
# 初期設定
git clone https://github.com/oka4shi/NetworkScience-environment
cd NetworkScience-environment

# Jupyter Notebookを起動
docker compose up
# ブラウザで http://localhost:8888 に接続するとJupyter Labが起動します

# シェルに接続
docker compose exec jupyter bash

# Jupyter Notebookを終了
docker compose down
```

`./notebooks`フォルダにノートブックファイルを保存するとJupyter Labから確認できます。

##  謝辞
このリポジトリは[coins23/prog1-environment](https://github.com/coins23/prog1-environment/)を参考にしています。
