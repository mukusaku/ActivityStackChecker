@echo off
echo -----------------------------
echo 　Activityスタック取得開始　
echo -----------------------------
adb shell dumpsys activity activities | find "realActivity"
echo -----------------------------
echo 　Activityスタック取得終了　
echo -----------------------------
echo 終了する際はこのままウィンドウを閉じるか、
echo 適当な文字を入力後[Enter]を押してください
set USR_INPUT_STR=
rem 入力要求
set /P USR_INPUT_STR="[Enter]を押すともう1度実行できます"
IF "%USR_INPUT_STR%" == "" (
    call %~dp0/ActivityStackChecker.bat
) ELSE ( 
    echo 終了します
    adb shell exit
    exit
)