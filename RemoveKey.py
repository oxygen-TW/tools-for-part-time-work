import os,sys

if(len(sys.argv) != 2):
    print("參數錯誤")
    exit(1)

os.chdir(sys.argv[1])
print("已將目錄切換到："+sys.argv[1])

output = os.popen(r"cscript OSPP.VBS /dstatus").readlines()

key = ""
for line in output:
    if("Last 5 characters of installed product key" in line):
        key = line[-6:].replace("\n","")

print("偵測到目前金鑰為：" + key)
print("開始清除金鑰...")

output = os.popen(r"cscript ospp.vbs /unpkey:"+key).readlines()
print(output)
print("金鑰已刪除，請繼續認證步驟")
        