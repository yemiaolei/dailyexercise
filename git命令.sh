#!/bin/sh

# git配置
git config --global user.name "yemiaolei"
git config --global user.email 2849934102@qq.com
#要检查已有的配置信息
git config --list
#克隆，一定要在想要克隆的位置右键gitbash
git clone git：//链接内容 
后面可更改自己目录名称，加上要改的名字
例子：git clone git：//github.com/schacon/grit.git mygrit
#查看上次提交之后是否有改动 -s是简短输出内容
git status -s 
#显示已写入缓存与已修改但尚未写入缓存的改动的区别
git diff
#取消已缓存的内容
git reset HEAD
#将条目从缓存区中移除
git rm
# 重命名磁盘上的文件
git mv
#删除远程仓库（origin为远成仓库别名）
git remote rm origin

############git问题区###############
#git无法pull仓库refusing to merge unrelated histories
git pull origin master  pull origin master --allow-unrelated-histories
#git error: failed to push some refs to 'git@github.com:
git pull origin master 
git push -u origin master 
######################################



############一次完整提交步骤##############
#在要提交文件那里初始化git仓库
git init
# 文件纳入版本控制
git add README
#提交,后面的是备注信息
git commit -m '第一次版本提交'
#添加一个远程仓库，并起远程仓库别名为origin
git remote add origin git@github.com:yemiaolei/dailyexercise.git
#提交到github,这里的origin是别名 master则是推送远程时的分支名称
git push -u origin master
##########################################
#查看远程库
git remote
git remote -v

###################一次完整下载更新远程仓库###################
#从远程仓库下载新分支与数据：
git fetch origin
#在本地更新修改
git merge origin/master
############################################################

