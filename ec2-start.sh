sudo yum update -y

# Gitのインストール
sudo yum install git -y

# Dockerのインストール
sudo yum install -y docker

# Dockerの起動
sudo service docker start
sudo systemctl enable docker.service
sudo service docker status

# dockerコマンドを使用可能にする
sudo usermod -a -G docker ec2-user