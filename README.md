# my-terminal-config
ubuntu18.04上zsh，ranger和fzf的配置备份。
## 安装以下主程序,再覆盖配置文件
- ### zsh主题-[jovial](https://github.com/zthxxx/jovial)
```
curl -sSL -H 'Cache-Control: no-cache' git.io/jovial | sudo bash -s $USER
```
会自动安装zsh,oh-my-zsh,jovial及辅助插件

- ### [fuzzy finder](https://github.com/junegunn/fzf)
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo ln -s $HOME/.fzf/bin/fzf /usr/local/bin
```

- ### [ccat](https://github.com/owenthereal/ccat)
```
wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz
tar xfz linux-amd64-1.1.0.tar.gz 
sudo ln -s $HOME/linux-amd64-1.1.0/ccat /usr/local/bin
```

- ### [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)(ag命令)
```
sudo apt install the_silver_searcher
```

- ### [ranger](https://github.com/ranger/ranger)
```
sudo apt install ranger
```
## 生成ranger配置文件
```
ranger --copy-config=all
```
## 安装ranger辅助插件(可选)
```
sudo apt-get install caca-utils # img2txt 图片
sudo apt-get install highlight  # 代码高亮
sudo apt-get install atool　    # 存档预览
sudo apt-get install w3m        # html页面预览
sudo apt-get install poppler    # pdf预览
sudo apt-get install mediainfo  # 多媒体文件预览
sudo apt-get install catdoc     # doc预览
sudo apt-get install docx2txt   # docx预览
sudo apt-get install xlsx2csv   # xlsx预览
```
## 拷贝
