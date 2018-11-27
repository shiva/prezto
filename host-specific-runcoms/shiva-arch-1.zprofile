
echo "Configuring $HOST specific zprofile env"

add_folder_to_path()
{
  FOLDER=$1
  shift;
  if [[ -d $FOLDER ]]; then
    path=(
        $FOLDER
        $path
    )
  fi
}

add_folder_to_path ~/.cargo/bin
add_folder_to_path ~/.local/bin

alias work='cd ~/dev/rt-planner/rt-planner-rest-server'
