在ubuntu终端使用sudo apt-get install命令时，有时会失败。
可以尝试下面两种方法：

	1.
		sudo rm /var/cache/apt/archives/lock
		sudo rm /var/lib/dpkg/lock
		强制解锁
	
	2.
		输入 ps -aux ，列出进程。
		找到含有apt‘-get或者wget的进程PID，
      	直接sudo kill PID，解决。
