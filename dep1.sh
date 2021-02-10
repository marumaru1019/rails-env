#!/bin/bash

#初回デプロイ

export REPO=rails-ab
export IAM=269889588377

# contextをdefaultに移動
docker context use default

#付けたいアプリのタグを付けてbuild
docker build . -t ${REPO}

# タグを指定して、イメージが作成されていることを確認
docker images --filter reference=${REPO}


# 検証
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin ${IAM}.dkr.ecr.ap-northeast-1.amazonaws.com

# レポジトリの作成
aws ecr create-repository \
        --repository-name ${REPO} \
        --image-scanning-configuration scanOnPush=true \
        --region ap-northeast-1

#タグ付け
docker tag ${REPO}:latest 269889588377.dkr.ecr.ap-northeast-1.amazonaws.com/${REPO}:latest

# イメージのプッシュ
docker push 269889588377.dkr.ecr.ap-northeast-1.amazonaws.com/${REPO}:latest

# 確認
aws ecr list-images --repository-name ${REPO}



#if error "Unable to locate credentials. You can configure credentials by running "aws configure"." is occured
#command under push

#$ aws configure

#so you are required aws accecc key id and aws secret access key and your default region
