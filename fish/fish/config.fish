if status is-interactive
    # Commands to run in interactive sessions can go here
  alias vim=nvim
  alias k=kubectl
  tmux
  cd
  clear
  set -Ux projects ~/projects
  set -Ux uni ~/uni
  set -Ux configs ~/.config  
end

function gitgap
    set message (string join " " $argv)
    if test -z "$message"
        set message "added stuff"
    end
    git add . 
    git commit -m "$message"
    git push
    echo "Changes committed with message: '$message' and pushed to remote."
end

function mdcd 
  mkdir $argv 
  cd $argv
end 

function kdry -d "Perform a dry run of a deployment and output to YAML"
    if test (count $argv) -lt 1
        echo "missing name"
        echo "Usage: kdry <deployment-name>"
        return 1
    end

    set deployment_name $argv[1]

    kubectl create deployment $deployment_name --image=$deployment_name --dry-run=client -o yaml > $deployment_name.yaml
    echo "Dry run output saved to $deployment_name.yaml"
end

function cdto -d "Change directory to a path relative to home"
    set -l target $HOME/$argv
    cd $target
    echo "Current directory: " (pwd)
end
