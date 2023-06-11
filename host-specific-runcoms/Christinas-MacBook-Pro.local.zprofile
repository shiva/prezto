
# load nvm if it exists
if [[ -f $(brew --prefix nvm)/nvm.sh ]]; then
    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
fi


# setup goroot if go is installed
GOROOT=`brew --prefix go`
if [[ -d $GOROOT ]]; then
  path=(
    $GOROOT
    $path
  )

  export GOROOT
  export GOPATH=${HOME}/go
fi

TERRAROOT=${HOME}/terra/bin
if [[ -f $TERRAROOT/terra ]]; then
  path=(
    $TERRAROOT
    $path
  )
fi

CLANG_TOOLS_ROOT=`brew --prefix clang-format`
if [[ -d $CLANG_TOOLS_ROOT ]]; then
  path=(
    $CLANG_TOOLS_ROOT/bin
    $CLANG_TOOLS_ROOT/share/clang
    $path
    )
fi

alias fdb='cd ~/dev/gitlab/fdb.git/fdb'
