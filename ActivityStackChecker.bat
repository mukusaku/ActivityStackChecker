@echo off
echo -----------------------------
echo �@Activity�X�^�b�N�擾�J�n�@
echo -----------------------------
adb shell dumpsys activity activities | find "realActivity"
echo -----------------------------
echo �@Activity�X�^�b�N�擾�I���@
echo -----------------------------
echo �I������ۂ͂��̂܂܃E�B���h�E����邩�A
echo �K���ȕ�������͌�[Enter]�������Ă�������
set USR_INPUT_STR=
rem ���͗v��
set /P USR_INPUT_STR="[Enter]�������Ƃ���1�x���s�ł��܂�"
IF "%USR_INPUT_STR%" == "" (
    call %~dp0/ActivityStackChecker.bat
) ELSE ( 
    echo �I�����܂�
    adb shell exit
    exit
)