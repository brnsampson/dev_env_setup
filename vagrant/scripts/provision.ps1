# Expand-Archive .\telegraf-1.12.5_windows_amd64.zip 'C:\Program Files\'
write-host "testeroo"

Expand-Archive -Force C:\vagrant\provision\telegraf.zip 'C:\Program Files\'

cp C:\vagrant\provision\telegraf.conf 'C:\Program Files\telegraf\telegraf.conf'
