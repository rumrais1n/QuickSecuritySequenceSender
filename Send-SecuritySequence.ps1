Param(
	# 引数の指定がなければ5秒待つ設定にする
	[Int32]$TimeWait = 5
)

# コンポーネントの読み込み
Add-Type -AssemblyName Microsoft.VisualBasic
Add-Type -AssemblyName System.Windows.Forms

# 実行まで -TimeWait で指定した時間待ってCtrl+Alt+Endを送る
If ($TimeWait -ge 0) {
	Write-Host $TimeWait"秒後に Ctrl+Alt+End キーを送信します。"
	
	Start-Sleep -s $TimeWait
	[System.Windows.Forms.SendKeys]::SendWait("^%{END}");
}
