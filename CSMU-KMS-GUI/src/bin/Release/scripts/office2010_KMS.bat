echo ���� Microsoft Office 2010 �w�˥ؿ�
set OfficePath="C:\Program Files\Microsoft Office\Office14\"
if exist "C:\Program Files (x86)\Microsoft Office\Office14\ospp.vbs" set OfficePath="C:\Program Files (x86)\Microsoft Office\Office14\"
For /F "tokens=2 delims=[]" %%G in ('ver') Do (set _version=%%G) 
For /F "tokens=2 delims=. " %%G in ('echo %_version%') Do (set _major=%%G) 
if "%_major%"=="5" (echo ���� KMS ���_�޲z���A��
cscript %OfficePath%ospp.vbs /osppsvcrestart)
echo �}�� KMS ���_�޲z���A��
cscript %OfficePath%ospp.vbs /sethst:kms.csmu.edu.tw
cscript %OfficePath%ospp.vbs /setprt:1688
echo �Ұ� Microsoft Office 2010
cscript %OfficePath%ospp.vbs /act
echo �Ұʵ{�ǰ��槹��
echo �Ъ`�N: �W��(�e����)��� Product  activation  successful ,
echo �~��ܱz�� Office2010 �{�Ҧ��\!
echo "finished"