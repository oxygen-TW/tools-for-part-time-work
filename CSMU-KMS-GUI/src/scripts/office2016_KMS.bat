echo ���� Microsoft Office 2016 �w�˥ؿ�
set OfficePath="C:\Program Files\Microsoft Office\Office16\"
if exist "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" set OfficePath="C:\Program Files (x86)\Microsoft Office\Office16\"
For /F "tokens=2 delims=[]" %%G in ('ver') Do (set _version=%%G) 
For /F "tokens=2 delims=. " %%G in ('echo %_version%') Do (set _major=%%G) 
if "%_major%"=="5" (echo ���� KMS ���_�޲z���A��
cscript %OfficePath%ospp.vbs /osppsvcrestart)
echo �]�w KMS ���_�޲z���A��
cscript %OfficePath%ospp.vbs /sethst:kms.csmu.edu.tw
cscript %OfficePath%ospp.vbs /setprt:1688
echo �Ұ� Microsoft Office 2016
cscript %OfficePath%ospp.vbs /act
echo �Ұʵ{�ǰ��槹��
echo �Ъ`�N: �W��(���e����)�ݦ� Product  activation  successful �X�{,
echo �~��ܱz�� Office2016 �Ұʦ��\!
echo "finished"