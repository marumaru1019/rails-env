#!/bin/bash
export CONTEXT=meme

#contextの作成
docker context create ecs ${CONTEXT}

#contextの確認
docker context ls

#contextの使用
docker context use ${CONTEXT}

#update
# docker compose down

#ecsへのdeploy -がいらない
docker compose up


#デプロイ先のパスの確認
docker compose ps


#サーバーのストップ
# docker compose down
