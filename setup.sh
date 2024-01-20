#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

original_files=(.bashrc .bash_profile .bash_aliases     .vimrc      .tmux.conf)
target_files=  (.bashrc .bash_profile .bash_aliases vim/.vimrc tmux/.tmux.conf)
backup_dir="$SCRIPT_DIR/old/"
[ ! -d $backup_dir ] && mkdir $backup_dir 

if [ ! -z "$(ls -A $backup_dir)" ]; then
  echo "$backup_dir is not empty!"
  exit
fi

for i in ${!original_files[@]}; do
  of=~/${original_files[$i]}
  tf="$SCRIPT_DIR/${target_files[$i]}"
  if [ -f $tf ]; then
    if [ -f $of ]; then
      if [[ -L $of ]]; then
        echo "$of is a link to $(realpath "$of"), skipping"
        continue
      else
        echo "moving original file $of to $backup_dir"
        mv $of $backup_dir/
      fi
    fi
    ln -s "$tf" "$of"
    echo "$of -> $tf"
  fi
done

