# 安装Move

安装Move之前是需要先安装rust的，所以这里我们先介绍rust的安装过程

- [rust](https://rustup.rs/)
```shell
# 安装rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
遇到Proceed with installation (default)时按enter键，安装完成后，提示Rust is installed now. Great! 然后根据提示配置环境变量

```shell
# To configure your current shell, run:
source "$HOME/.cargo/env"
# 检测安装是否成功
cargo --version
```

安装好rust之后，就可以安装move Cli了

- [move](https://github.com/move-language/move/blob/main/language/documentation/tutorial/README.md#step-0-installation)

在终端中，执行
```shell
git clone https://github.com/move-language/move.git
```
然后执行下面代码安装依赖工具

```shell
cd move
./scripts/dev_setup.sh -ypt
```
安装过程中会提示下面内容，输入`y`之后就可以继续安装所需依赖

```shell
Proceed with installing necessary dependencies? (y/N) > y
```

然后配置环境变量
```shell
source ~/.profile
```

编译并安装 move cli，这里需要一段时间

```shell
cargo install --path language/tools/move-cli
# 查看版本
move --version
```