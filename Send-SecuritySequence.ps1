# コンポーネントの読み込み
Add-Type -AssemblyName Microsoft.VisualBasic
Add-Type -AssemblyName System.Windows.Forms

# 実行まで一定時間待つ
Start-Sleep -s 5

# Ctrl+Alt+Endを送る
[System.Windows.Forms.SendKeys]::SendWait("^%{END}");