FROM:linux社区
AUTHOR:anljf

做了几道简单的awk基础练习题，跟大家分享一下

文件 file.txt的内容格式：
文件中包含名字，电话号码和过去三个月里的捐款
具体内容如下：
>Mike Harrington:[510] 548-1278:250:100:175  
Christian Dobbins:[408] 538-2358:155:90:201  
Susan Dalsass:[206] 654-6279:250:60:50  
Archie McNichol:[206] 548-1348:250:100:175  
Jody Savage:[206] 548-1278:15:188:150  
Guy Quigley:[916] 343-6410:250:100:175  
Dan Savage:[406] 298-7744:450:300:275  
Nancy McNeil:[206] 548-1278:250:80:75  
John Goldenrod:[916] 348-4278:250:100:175  
Chet Main:[510] 548-5258:50:95:135  
Tom Savage:[408] 926-3456:250:168:200  
Elizabeth Stachelin:[916] 440-1763:175:75:300  

练习：
1. 显示所有电话号码  
2. 显示Dan的电话号码  
3. 显示Susan的名字和电话号码  
4. 显示所有以D开头的姓  
5. 显示所有以一个C或E开头的名  
6. 显示所有只有四个字符的名  
7. 显示所有区号为916的人名  
8. 显示Mike的捐款.显示每个值时都有以$开头.如$250$100$175  
9. 显示姓,其后跟一个逗号和名,如Jody,Savage  
10.写一个awk的脚本,它的作用:显示Savage的全名和电话号码.显示Chet的捐款.显示所有头一个月捐款$250的人名.  


我写的答案如下：
1
[root@localhost zhaoyj]# awk -F: '{print $2}' file.txt 


2
[root@localhost zhaoyj]# awk -F: '$1~/Dan/{print $2}' file.txt 
[406] 298-7744


3 
[root@localhost zhaoyj]# awk -F: '$1~/Susan/{print$1":"$2}' file.txt 
Susan Dalsass:[206] 654-6279


4
[root@localhost zhaoyj]# awk '$1~/^D/{print $1}' file.txt 
Dan


5
[root@localhost zhaoyj]# awk -F: '$1~/^[C|E]/{print $1}' file.txt |awk '{print $2}'
Dobbins
Main
Stachelin


6
[root@localhost zhaoyj]# awk 'length($1)=="4"{print $1}' file.txt 
Mike
Jody
John
Chet


7
[root@localhost zhaoyj]# awk -F"[ :]" '$3~/916/{print $1" "$2}' file.txt 
Guy Quigley
John Goldenrod
Elizabeth Stachelin


8
[root@localhost zhaoyj]# awk -F:  '$1~/Mike/{print "$"$3" ""$"$4" ""$"$5}' file.txt 
$250 $100 $175


9
[root@localhost zhaoyj]# awk -F:  '{print $1}' file.txt |awk '{print $1","$2}'

