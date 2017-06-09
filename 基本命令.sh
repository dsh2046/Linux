1. 如果ssh到服务器， 想打开浏览器或使用其他GUI， 运行 export DISPLAY=:0 ； 

2. Vnc 下载vinagre 远程链接服务器并可视化
在服务器端：　vncserver -geometry 1920x1080  建立vnc链接
　　　　　　　vncserver -kill :1  杀死１端口的vnc链接

3. 从某电脑拷贝文件到本机服务器，在本机服务器terminal输入： 
sudo scp samueldeng@10.10.31.6:/home/samueldeng/Downloads/Win10_1607_English_x64.iso .

4.apt-get purge -y --auto-remove　sth    ＃完全卸载并清除配置文件
