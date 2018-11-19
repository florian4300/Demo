 param (
    [string]$path
 )
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;


cd $path;
curl -Uri https://github.com/florian4300/Demo/archive/master.zip -OutFile master.zip;
Expand-Archive -Path master.zip -DestinationPath $path;
del master.zip;
curl -Uri https://nodejs.org/dist/v10.13.0/node-v10.13.0-x64.msi -OutFile node.msi
msiexec /quiet /a C:\Users\flo\Desktop\test\node.msi /log C:\Users\flo\Desktop\test\test.txt TARGETDIR=`"C:\Program Files`";
setx path $PATH$; & 'C:\Program Files\nodejs'