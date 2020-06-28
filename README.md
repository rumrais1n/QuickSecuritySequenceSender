# Quick Security Sequence Sender

## 概要
RDPセッションにセキュリティーシーケンス(Ctrl+Alt+End)を送るスクリプトです。  
ノートPCだとCtrl, Alt, Endに加えてFnも押さないといけなかったりして指が限界なので作りました。

## 説明
### 実行方法
デフォルトの遅延時間(5秒)でキーを送信する場合はオプションをつけずに実行します。  
実行する際はキーを受け取ってほしいアプリケーションウィンドウにフォーカスを合わせてください。

```powershell
PS> .\Send-SecuritySequence.ps1
```

`-TimeWait` オプションを利用することで遅延時間を指定することが可能です。  
秒は"Second"単位で指定し, 下記のように実行します。

```powershell
PS> .\Send-SecuritySequence.ps1 -TimeWait 2
```