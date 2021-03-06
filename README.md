ubuntu18.04上终端美化的配置备份。

------

## 背景

前些天将服务器上的QQ机器人框架从[Nonebot](https://github.com/nonebot/nonebot)迁移到[Nonebot2](https://github.com/nonebot/nonebot2)，由于该框架最低支持 `Python 3.7+`，于是安装了`Python3.8`，后来又手贱将系统自带`Python3.6`移除，然后重启就无法进入系统了.....

网站，数据库，机器人插件平时都有做备份，关键这终端配置文件日常改动比较频繁就没做备份（强迫症受不了黑乎乎、朴实无华的终端）......

重装系统后倒腾了半天时间，装扮了一下终端，在此做备份。

## 使用

#### 安装以下命令

##### zsh

```shell
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"  # 安装oh-my-zsh
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k  # powerlevel10k主题
```

##### [fuzzy finder](https://github.com/junegunn/fzf)

```shell
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo ln -s $HOME/.fzf/bin/fzf /usr/local/bin
```

##### [ccat](https://github.com/owenthereal/ccat)

```shell
wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz
tar xfz linux-amd64-1.1.0.tar.gz 
sudo ln -s $HOME/linux-amd64-1.1.0/ccat /usr/local/bin
```

##### [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)(ag命令)

```shell
sudo apt install the_silver_searcher
```

##### [ranger](https://github.com/ranger/ranger)

```shell
sudo apt install ranger
```

##### [lsd](https://github.com/Peltoche/lsd)

```shell
sudo dpkg -i lsd_0.19.0_amd64.deb   # 请前往release page下载最终的deb包
```

#### 生成ranger配置文件

```shell
ranger --copy-config=all
```


#### 安装ranger辅助插件(可选)

```shell
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


#### 覆盖配置文件

```shell
unzip my-terminal-config.zip
cp -r my-terminal-config/* $HOME
source ~/.zshrc  # 使配置立即生效
```

#### 安装vim插件

打开vim，命令模式下输入:PlugInstall安装fzf、airline等插件

## 预览

fzf界面预览：

![image-20210428170700475](https://gitee.com/hao58231/blog-image/raw/master//picgo/image-20210428170700475.png)

ranger界面预览：

![image-20210428165836404](https://gitee.com/hao58231/blog-image/raw/master//picgo/image-20210428165836404.png)

vim界面预览：

![image-20210428165951472](https://gitee.com/hao58231/blog-image/raw/master//picgo/image-20210428165951472.png)

shell界面预览：

![image-20210428170408835](https://gitee.com/hao58231/blog-image/raw/master//picgo/image-20210428170408835.png)

**TIP**:以上效果来自Windows Terminal，字体为`Meslo Nerd Font`(ttf目录)

