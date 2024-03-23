# Dotfiles Repository
This repository is a collection of my personal dotfiles, used to synchronize and maintain a consistent development environment across multiple machines. Dotfiles are configuration files that are typically prefixed with a dot (.), making them hidden in Unix-based systems. These files are crucial for customizing software behavior, such as shell configurations, editor settings, and more.

The purpose of this repository is to streamline the setup process for new environments, ensuring that I can quickly get up and running with a familiar setup, regardless of the machine I'm working on. By versioning these configurations, I can also track changes over time, facilitating easier updates and reversions if necessary.

## How to Use
To replicate my environment or utilize these configurations, follow the steps below:

### Prerequisites
- git: For cloning and synchronizing the packages with symlinks
- stow: For managing and creating the symlinks between the git controlled directory and the dotfiles targets (Usually ~/.config/)
### procedure 
Acquire the dotfiles locally on your computer by cloning the repository

```bash
git clone https://github.com/OthelloEngineer/dotfiles.git
```

Creating the symbolic links to the desired location. For demostration here I am installing the dotfiles at ~/.config/

```bash
stow -t ~/.config/ [PACKAGE NAME]
```

Example
To install the tmux configuration, you would run:

```bash
stow -t ~/.config/ tmux 
```

## Extend this repository

Create a new directory within the repository for your configuration, if it doesn't already exist.
The directory should be named [PACKAGE NAME]/[PACKAGE NAME]/[DOT FILES...]
The nested directories with duplicated names are needed because serve different purposes each
1. The outer directory is used to identify the stow package. Which is practical for keeping different versions of the same application configuration such as *"fish full featured"* *"fish minimal"*.
2. The inner directory is used to maintain the name of the application that the configuration files are describing. If the inner directory was not added then, for instance, the *fish* dotfiles will be put into the ~/config/ dir and not ~/config/fish/ dir. This allows the target command to be agnostic of installed service, allowing the user to install several packages with one command 

Add your dotfiles to this directory. These can be new configurations or overrides for existing ones.

Use stow as described in the Installing Configurations section to apply your changes.
Feel free to fork this repository and customize it to your liking. Contributions and suggestions are always welcome!
