<div align='center'>

![Version](https://img.shields.io/badge/version-2.1.0-blue.svg)

</div>

`domo` is a bash script allowing users to rapidly list, create and navigate between your projects. It integrate with different backends (tmux, vscode) for convenience.

## Prerequisites

- bash 4.0 or higher
- [gum](https://github.com/charmbracelet/gum)
- tmux (optional)
- git


## 🧰 Installation

Clone the repository
```bash
git clone git@github.com:alexis-moins/domo.git ~/.domo
```

Go into the install directory and execute the [install](install.sh) script:
```bash
./install.sh
```

The install script copies the `domo` script in the `~/.local/bin` directory (you can also change the destination by passing it as an argument to the install script).

## 🌱 Quick Start

After installing, you can follow these steps to quickly see how it works:

```bash
# Add a new space
domo space add personal

# You can then create new projects in this space
domo create work/react-app

# domo supports project creation using templates
domo create work/react-app --template=vite

# But also creating your own one
domo template add python-poetry

# Opening a project is simple
domo open work/react-app

# But using a different backend is also possible
domo open work/react-app --backend=vscode

# You can even clone github repositories directly
domo clone git@github.com:alexis-moins/dotfiles.git work/dotfiles
```

## 🚦 Usage

```
$ domo

domo - manage your projects the easy way

Usage:
  domo COMMAND
  domo [COMMAND] --help | -h
  domo --version | -v

Project Commands:
  create       Create a new project
  clone        Clone a remote git repository
  open         Open a project
  list         List projects

Commands:
  space        Space related commands
  template     Template related commands
  backend      Backend related commands

Options:
  --help, -h
    Show this help

  --version, -v
    Show version number

Environment Variables:
  DOMO_HOME
    Directory where the projects will be managed
    Default: ~/dev

  DOMO_SHOW_CMD
    Command used to show backends & templates
    Default: cat
```
