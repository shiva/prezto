
CARGO_HOME=~/.cargo/
if [[ -d $CARGO_HOME ]]; then
  path=(
    $CARGO_HOME/bin
    $path
    )
fi
