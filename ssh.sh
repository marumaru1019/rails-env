export keyName={キーペア名.pem}
export IP={パブリックIPアドレス}

# keyペアの移動
cd ~/Downloads/
mv ${keyName} ~/ssh/

# keyペアに読み取り権限を追加
chmod 400 ~/ssh/${keyName}

# sshログイン
ssh -i "~/ssh/${keyName}" ec2-user@${IP}

# Are you sure you want to continue connecting (yes/no)? yesと入力

scp ~/ssh/test-key.pem ec2-start.sh ec2-user@54.248.227.188:/tmp/