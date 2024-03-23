if status is-interactive
    # Commands to run in interactive sessions can go here
  alias vim=nvim
  tmux
  cd
  clear
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

