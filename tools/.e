#!/bin/bash

alias git=git_override

function config_xhub() {
  echo "What is your GitHub ID?"
  read github_id
  echo $github_id > $HOME/.github_id
  if [ ! -f $HOME/.ssh/id_rsa.pub ]; then
    ssh-keygen -t rsa
  fi
  echo "Your public key is:"
  cat $HOME/.ssh/id_rsa.pub
}

function github_id() {
  cat $HOME/.github_id
}

function git_override() {
  system_git=$(which git)
  if [ "$1" = "cl" ] && [ "$2" = "config" ]; then
    config_xhub
    return
  elif [ "$1" = "cl" ] && [ "$2" = "upload" ]; then
    $system_git push ssh://$(github_id)@review.gerrithub.io:29414/romandev/chromium HEAD:refs/for/master
    return
  fi
  $system_git $@
}

function install_envsetup() {
  if [ ! -f $HOME/.envsetup.sh ]; then
    cp $(pwd)/.e $HOME/.envsetup.sh
    echo ". $HOME/.envsetup.sh" >> $HOME/.bashrc
    config_xhub
  fi
}

install_envsetup
