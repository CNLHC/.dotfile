# Document

This tool is a mixture of [tmux](https://github.com/tmux/tmux), [Vim](https://github.com/vim/vim), and [zsh](https://github.com/ohmyzsh/ohmyzsh), which can make your experience smooth Linux.

**Notice** that tmux is the main workspace. Vim and zsh are just supplements of it. So you should first use `tmux [new | a]` to enter tmux panel.

### Basic usage

> prefix : $\color{red} Ctrl + a$

- **session management** is the same with tmux

- **window management** is the same with tmux

- **panel management**

  | command   | usage                       |
  | --------- | --------------------------- |
  | prefix \| | create a panel vertically   |
  | prefix -  | create a panel horizontally |
  | prefix h  | move to left panel          |
  | prefix j  | move to up panel            |
  | prefix k  | move to down panel          |
  | prefix l  | move to right panel         |
  | prefix ]  | move to next panel          |
  | ...       | ...                         |
  | ...       | ...                         |

- **find something in shell output**
- **use the vim command in shell(zsh) command**
- **and so on**



> You can also change the usage setting in file "/path to setting file"