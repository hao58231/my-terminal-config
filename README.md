# my-terminal-config
ubuntu18.04上zsh，ranger和fzf的配置备份。

### 安装zsh主题-[jovial](https://github.com/zthxxx/jovial)
```
curl -sSL -H 'Cache-Control: no-cache' git.io/jovial | sudo bash -s $USER
```
会自动安装zsh,oh-my-zsh,jovial及辅助插件

### 安装[fuzzy finder](https://github.com/junegunn/fzf)
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo ln -s $HOME/.fzf/bin/fzf /usr/local/bin
```

### 安装[ccat](https://github.com/owenthereal/ccat)
```
wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz
tar xfz linux-amd64-1.1.0.tar.gz 
sudo ln -s $HOME/linux-amd64-1.1.0/ccat /usr/local/bin
```

### 安装[the_silver_searcher](https://github.com/ggreer/the_silver_searcher)(ag命令)
```
sudo apt install the_silver_searcher
```

